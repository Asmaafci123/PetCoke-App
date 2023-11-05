
import 'package:petcoke/data/models/store/store.dart';
import 'package:petcoke/data/models/vessel/vessel.dart';

import '../../core/constants/app_endpoints.dart';
import '../../core/utils/services/dio_client.dart';
import '../models/add_shipment_model/add_shipment_model.dart';
import '../models/mobile_version_model/mobile_version_model.dart';
import '../models/preCheck_question_model/pre_check_question.dart';
import '../models/responses/get-mobile-version-response/get-mobile-version-response.dart';
import '../models/responses/master_data_add_shipment/master_data_add_shipment.dart';
import '../models/responses/register_shipment_response/register_shipment_response.dart';
import '../models/responses/response_shipment info/response_of_shipment_info.dart';
import '../models/responses/timing_response/timing_response.dart';
import '../models/responses/user_login_reponse/user_login_reponse.dart';
import '../models/send_current_location_model/send_current_location_model.dart';
import '../models/user/user.dart';

abstract class RemoteDataSource {
  Future<UserLoginResponse> loginUser(
      {required User user});
  Future<String> sendCurrentLocation(
      {required SendLocationModel locationModel});
  Future< ShipmentInfoResponse> getMasterDataShipment();
  Future<RegisterShipmentResponse> registerShipment({required AddShipmentModel shipment});
  Future<TimingResponse> checkIn({required  SendLocationModel checkIn});
  Future<TimingResponse> checkOut({required  SendLocationModel checkOut});
  Future<TimingResponse> checkAttendance({required  SendLocationModel currentCheck});
  Future<UserLoginResponse> changePassword(
      {required User user});
  Future<MobileVersionModelResponse> getLastAndroidVersion();
}

class  RemoteDataSourceImpl  extends RemoteDataSource {
  final DioClient client;
  RemoteDataSourceImpl({required this.client});
  @override
  Future<UserLoginResponse> loginUser({
    required User user
  }) async {
    final response = await client.request(
        url: AppEndpoints.userLogin,
        method: HttpMethod.POST,
        data: user);
   return UserLoginResponse.fromJson(response.data);
  }


  @override
  Future<String> sendCurrentLocation(
      {required SendLocationModel locationModel}) async {
    final response = await client.request(
        url: AppEndpoints.sendCurrentLocation,
        method: HttpMethod.POST,
        data:locationModel);
    return response.data['message'];
  }


  @override
  Future<ShipmentInfoResponse>  getMasterDataShipment() async {
    final response = await client.request(
        url: AppEndpoints.getMasterDataOfShipment,
        method: HttpMethod.GET);
   return  ShipmentInfoResponse.fromJson(response.data);
  }
  @override
  Future<RegisterShipmentResponse>registerShipment({
    required AddShipmentModel shipment
  }) async {
    final response = await client.request(
        url: AppEndpoints.registerShipment,
        method: HttpMethod.POST,
        data: shipment);
    return RegisterShipmentResponse.fromJson(response.data);

  }

  @override
  Future<TimingResponse>checkIn({
    required SendLocationModel checkIn
  }) async {
    final response = await client.request(
        url: AppEndpoints.checkInAndCheckOut,
        method: HttpMethod.POST,
        data: checkIn);
    return TimingResponse.fromJson(response.data);
  }

  @override
  Future<TimingResponse>checkOut({
    required SendLocationModel checkOut
  }) async {
    final response = await client.request(
        url: AppEndpoints.checkInAndCheckOut,
        method: HttpMethod.POST,
        data: checkOut);
    return TimingResponse.fromJson(response.data);
  }
  @override
  Future<TimingResponse> checkAttendance({required  SendLocationModel currentCheck}) async {
    final response = await client.request(
        url: AppEndpoints.employeeLastCheckIn,
        method: HttpMethod.POST,
        data: currentCheck);
    return TimingResponse.fromJson(response.data);
  }

  @override
  Future<UserLoginResponse> changePassword({
    required User user
  }) async {
    final response = await client.request(
        url: AppEndpoints.changePassword,
        method: HttpMethod.POST,
        data: user);
    return UserLoginResponse.fromJson(response.data);
  }
  @override
  Future<MobileVersionModelResponse> getLastAndroidVersion()async
  {
    final response = await client.request(
        url: AppEndpoints.getLastMobileVersion,
        method: HttpMethod.GET,
        data: null);
    return MobileVersionModelResponse.fromJson(response.data);
  }
}