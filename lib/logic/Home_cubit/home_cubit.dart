import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location_geocoder/location_geocoder.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/core/errors/failures.dart';
import '../../core/utils/services/location_service.dart';
import '../../data/models/mobile_version_model/mobile_version_model.dart';
import '../../data/models/send_current_location_model/send_current_location_model.dart';
import '../../data/repositories/petcoke_repository.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  static HomeCubit get(context) => BlocProvider.of(context);
  final PetCokeRepository petCokeRepository;

  HomeCubit({required this.petCokeRepository}) : super(InitialHomeState());


  getLastMobileVersion()async
  {
    emit(LoadingGetLastMobileVersionHomeState());
    final result=await  petCokeRepository.getLastMobileVersion();
    result.fold((failure){
      emit(FailGetLastMobileVersionHomeState(message:failure.message));
    }, (response) {
      AppConstants.lastAndroidMobileVersion=response.data.androidVersion;
      AppConstants.lastIOSMobileVersion=response.data.iosVersion;
      emit(SuccessGetLastMobileVersionHomeState(message:"success"));
    });
  }
  toggleLanguage(String code) async{
    AppConstants.languageCode = code;
    await petCokeRepository.toggleLanguage();
    emit(ToggleLanguageCodeSuccessHomeState());
  }

  Placemark? place;

  Future<void> getCurrentLocation() async {
    emit(LoadingGetCurrentLocationHomeState());
    var loc = LocationService();
    final result=await petCokeRepository.getCurrentLocation();
    result.fold((failure) {
      emit(FailGetCurrentLocationHomeState(message: failure.message));
    }, (response)
    {
      loc.getCurrentLocation().then((value) async {
        AppConstants.lang = value.longitude.toString();
        AppConstants.lat = value.latitude.toString();
        placemarkFromCoordinates(value.latitude, value.longitude,
            localeIdentifier: 'ar')
            .then((List<Placemark> placemarks) async {
          Placemark? place = placemarks[0];
          AppConstants.city = place.subAdministrativeArea!;
          AppConstants.street = place.locality!;
          print(AppConstants.city);
          print(AppConstants.street);
          emit(SuccessGetCurrentLocationHomeState());
        }).catchError((e){
          AppConstants.city="_";
          AppConstants.street="_";
          emit(FailGetCurrentLocationHomeState(message: e.toString()));
        });
      }).catchError((e) {
        AppConstants.city="_";
        AppConstants.street="_";
        emit(FailGetCurrentLocationHomeState(message: e.toString()));
      });
    });
  }
  // Future<void> getCurrentLocation()
  // async {
  //   emit(LoadingGetCurrentLocationHomeState());
  //   var loc = LocationService();
  //   loc.getCurrentLocation().then((value) async {
  //     AppConstants.lang = value.longitude.toString();
  //     AppConstants.lat = value.latitude.toString();
  //       emit(SuccessGetCurrentLocationHomeState());
  //     }).catchError((e){
  //       emit(FailGetCurrentLocationHomeState(message: e));
  //     });
  // }
  // Future<void> getCurrentAddress()
  // async {
  //   await getCurrentLocation();
  //   Future.wait(getCurrentLocation());
  //   print( AppConstants.lang);
  //   print( AppConstants.lat);
  //   // placemarkFromCoordinates(double.parse(AppConstants.lat),double.parse(AppConstants.lang),
  //   //     localeIdentifier: 'ar')
  //   //     .then((List<Placemark> placemarks) async {
  //   //   Placemark? place = placemarks[0];
  //   //   AppConstants.city = place.subAdministrativeArea!;
  //   //   AppConstants.street = place.locality!;
  //   //   print(AppConstants.city);
  //   //   print(AppConstants.street);
  //   //   emit(SuccessGetCurrentAddressHomeState());
  //   // }).catchError((e){
  //   //   AppConstants.city="_";
  //   //   AppConstants.street="_";
  //   //   emit(FailGetCurrentAddressHomeState(message: e.toString()));
  //   // });
  // }

  // Future<void> getCurrentLocation1() async {
  //   emit(LoadingGetCurrentLocationHomeState());
  //   final result= await petCokeRepository.getCurrentLocation();
  //   result.fold((failure) {
  //     emit(FailGetCurrentLocationHomeState(message: failure.message));
  //   }, (response)
  //   {
  //     var loc = LocationService();
  //     loc.getCurrentLocation().then((value) async {
  //       AppConstants.lang = value.longitude.toString();
  //       AppConstants.lat = value.latitude.toString();
  //       placemarkFromCoordinates(value.latitude, value.longitude,
  //           localeIdentifier: 'ar')
  //           .then((List<Placemark> placemarks) async {
  //         Placemark? place = placemarks[0];
  //         AppConstants.city = place.subAdministrativeArea!;
  //         AppConstants.street = place.locality!;
  //         print(AppConstants.city);
  //         print(AppConstants.street);
  //         emit(SuccessGetCurrentLocationHomeState());
  //       })
  //           .catchError((e){
  //         AppConstants.city="_";
  //         AppConstants.street="_";
  //         emit(FailGetCurrentLocationHomeState(message: e));
  //       });
  //     }).catchError((e) {
  //       AppConstants.city="_";
  //       AppConstants.street="_";
  //       emit(FailGetCurrentLocationHomeState(message: e));
  //     });
  //   });
  // }

  String errorMessage = '';
  sendLocation() async {
    emit(LoadingSendCurrentLocationHomeState());
    //getCurrentLocation();
    final result=await petCokeRepository.getCurrentLocation();
    result.fold((failure) {
      emit(FailGetCurrentLocationHomeState(message: failure.message));
    }, (response)
    {
      var loc = LocationService();
      loc.getCurrentLocation().then((value) async {
        AppConstants.lang = value.longitude.toString();
        AppConstants.lat = value.latitude.toString();
        placemarkFromCoordinates(value.latitude, value.longitude,localeIdentifier: 'ar')
            .then((List<Placemark> placemarks) async {
          Placemark place = placemarks[0];
          AppConstants.city = place.subAdministrativeArea!;
          AppConstants.street = place.locality!;
          final result = await petCokeRepository.sendCurrentLocation(
              locationModel: SendLocationModel(
                  lat: AppConstants.lat,
                  lng: AppConstants.lang,
                  action: 'CurrentLocation',
                  userId: AppConstants.user.userId!,
                  address:place.toString(),
                  date:DateTime.now(),
                  city: AppConstants.city,
                  street: AppConstants.street,
                  languageCode: AppConstants.languageCode
              ));
          result.fold((failure) {
            errorMessage = failure.message;
            emit(FailSendCurrentLocationHomeState(message: failure.message));
          }, (response) {
            emit(SuccessSendCurrentLocationHomeState(message: response));
          });
        }).catchError((e) {
          emit(FailGetCurrentLocationHomeState(message: "Please, Try Again".tr()));
        });
      }).catchError((e) {
        emit(FailGetCurrentLocationHomeState(message: e.toString()));
      });
    });
  }

  // checkAttendance()async
  // {
  //   emit(LoadingCheckCurrentAttendanceHomeState());
  //   final result = await petCokeRepository.checkAttendance(
  //       currentCheck: SendLocationModel(
  //           lat: "",
  //           lng: "",
  //           action: "",
  //           userId: AppConstants.user.userId!,
  //           address:"",
  //           date: DateTime.now(),
  //           city: "",
  //           street: "",
  //           languageCode: AppConstants.languageCode));
  //   result.fold((failure) {
  //     emit(FailCheckCurrentAttendanceHomeState(message: failure.message));
  //   }, (response) {
  //     AppConstants.currentCheckModel=response.data;
  //     if(response.flag==true && response.data==null)
  //     {
  //       AppConstants.isCheckedIn=false;
  //       AppConstants.checkOutModel=null;
  //       AppConstants.lastCheckIn=null;
  //     }
  //     if(response.flag==true && response.data!=null)
  //     {
  //       AppConstants.isCheckedIn=true;
  //       AppConstants.isCheckedOut=false;
  //       AppConstants.checkOutModel=null;
  //       AppConstants.lastCheckIn=response.data;
  //     }
  //     emit(SuccessCheckCurrentAttendanceHomeState(message: response.message));
  //   });
  // }
}
