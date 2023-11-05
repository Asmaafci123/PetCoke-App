import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/data/models/user/user.dart';
import '../../core/constants/app_strings.dart';
import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/network/device_connectivity.dart';
import '../datasources/local_data_source.dart';
import '../datasources/remote_data_source.dart';
import '../models/add_shipment_model/add_shipment_model.dart';
import '../models/credential_model/credential_model.dart';
import '../models/mobile_version_model/mobile_version_model.dart';
import '../models/responses/get-mobile-version-response/get-mobile-version-response.dart';
import '../models/responses/register_shipment_response/register_shipment_response.dart';
import '../models/responses/response_shipment info/response_of_shipment_info.dart';
import '../models/responses/timing_response/timing_response.dart';
import '../models/responses/user_login_reponse/user_login_reponse.dart';
import '../models/send_current_location_model/send_current_location_model.dart';

abstract class PetCokeRepository {
  Future<Either<Failure, UserLoginResponse>> loginUser(
      {required User user});
  Future<Either<Failure, String>>  sendCurrentLocation(
      {required SendLocationModel locationModel});
  Future<Either<Failure, ShipmentInfoResponse>>  getMasterDataShipment();
  Either<Failure, Unit> clearUser();
  Future<Either<Failure, RegisterShipmentResponse>>registerShipment({required AddShipmentModel shipment});
  Future<Either<Failure, TimingResponse>>  checkIn(
      {required SendLocationModel checkIn});
  Future<Either<Failure, TimingResponse>>  checkOut(
      {required SendLocationModel checkOut});

  Future<Either<Failure, TimingResponse>>checkAttendance({required  SendLocationModel currentCheck});

  Future<Either<Failure, UserLoginResponse>> changePassword(
      {required User user});

  Future<Either<Failure, Unit>> getCurrentLocation();
  Future<Either<Failure, MobileVersionModelResponse>> getLastMobileVersion();
  Future<Either<Failure, Unit>> toggleLanguage();
}

class PetCokeRepositoryImpl extends PetCokeRepository {
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;
  final  DeviceConnectivity deviceConnectivity;

  PetCokeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.deviceConnectivity,
  });

  @override
  Future<Either<Failure, UserLoginResponse>> loginUser(
      {required User user})
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      UserLoginResponse result = await remoteDataSource.loginUser(user: user);
      localDataSource.cacheUser(result.data);
      localDataSource.cacheLanguageCode(AppConstants.languageCode);
      CredentialDetails credentialDetails=CredentialDetails(cemexId: result.data.cemexId, password: result.data.password,languageCode: AppConstants.languageCode);
      localDataSource.cacheCredentialDetails(credentialDetails);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
  @override
  Either<Failure, Unit> clearUser() {
    try {
      localDataSource.clearCachedUser();
      localDataSource.clearCachedLastCheckInModel();
      localDataSource.clearCachedPopTimes();
      return const Right(unit);
    } catch (e) {
      return const Left(StorageFailure("Error"));
    }
  }

  @override
  Future<Either<Failure, String>>  sendCurrentLocation(
      {required SendLocationModel locationModel})
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      String result = await remoteDataSource.sendCurrentLocation(locationModel: locationModel);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, ShipmentInfoResponse>>  getMasterDataShipment()
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      ShipmentInfoResponse result = await remoteDataSource.getMasterDataShipment();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, RegisterShipmentResponse>> registerShipment({required AddShipmentModel shipment})
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      var result = await remoteDataSource.registerShipment(shipment: shipment);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
  @override
  Future<Either<Failure, TimingResponse>>checkIn(
      {required SendLocationModel checkIn})
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      TimingResponse result = await remoteDataSource.checkIn(checkIn: checkIn);
      localDataSource.cacheLastCheckInModel(result.data!);
      localDataSource.cachePopTimes(DateTime(2000));
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, TimingResponse>>checkOut(
      {required SendLocationModel checkOut})
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      TimingResponse result = await remoteDataSource.checkOut(checkOut: checkOut);
      localDataSource.clearCachedLastCheckInModel();
      localDataSource.clearCachedPopTimes();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }



  @override
  Future<Either<Failure, TimingResponse>>checkAttendance({required  SendLocationModel currentCheck})
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      TimingResponse result = await remoteDataSource.checkAttendance(currentCheck: currentCheck);
      if(result.data!=null) {
        //localDataSource.clearCachedLastCheckInModel();
        localDataSource.cacheLastCheckInModel(result.data!);
      }
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure,UserLoginResponse>> changePassword(
      {required User user})
  async {
    //check device connectivity
    if (await deviceConnectivity.isConnected == false) {
      return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      UserLoginResponse result = await remoteDataSource.changePassword(user: user);
      localDataSource.cacheUser(result.data);
      CredentialDetails credentialDetails=CredentialDetails(cemexId: result.data.cemexId, password: result.data.password,languageCode: AppConstants.languageCode);
      localDataSource.cacheCredentialDetails(credentialDetails);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> getCurrentLocation() async{
    if (await deviceConnectivity.isConnected == false) {
      return Left(
          DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      return const Right(unit);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
  @override
  Future<Either<Failure, MobileVersionModelResponse>> getLastMobileVersion()async
  {
    if (await deviceConnectivity.isConnected == false) {
      return Left(
          DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    }
    try {
      MobileVersionModelResponse result = await remoteDataSource.getLastAndroidVersion();
     // MobileVersionModel result=MobileVersionModel(androidVersion: '11.0.0', iosVersion: '2.1.1');
      return  Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
  @override
  Future<Either<Failure, Unit>> toggleLanguage()async
  {

    try {
      localDataSource.cacheLanguageCode(AppConstants.languageCode);
      return const Right(unit);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }
}
