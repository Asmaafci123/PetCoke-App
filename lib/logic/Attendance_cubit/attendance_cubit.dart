import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import '../../core/utils/services/location_service.dart';
import '../../data/models/send_current_location_model/send_current_location_model.dart';
import '../../data/repositories/petcoke_repository.dart';
import 'attendance_states.dart';

class AttendanceCubit extends Cubit<AttendanceStates> {
  static AttendanceCubit get(context) => BlocProvider.of(context);
  final PetCokeRepository petCokeRepository;

  AttendanceCubit({required this.petCokeRepository})
      : super(InitialAttendanceState());
  Placemark? place;

  checkIn() async {
    emit(LoadingGetCurrentLocationAttendanceState());
    var loc = LocationService();
    loc.getCurrentLocation().then((value) async {
      AppConstants.lang = value.longitude.toString();
      AppConstants.lat = value.latitude.toString();
      placemarkFromCoordinates(value.latitude, value.longitude,
              localeIdentifier: 'ar')
          .then((List<Placemark> placemarks) async {
        place = placemarks[0];
        AppConstants.city = place!.subAdministrativeArea!;
        AppConstants.street = place!.locality!;
        final result = await petCokeRepository.checkIn(
            checkIn: SendLocationModel(
                lat: AppConstants.lat,
                lng: AppConstants.lang,
                action: 'CheckIn',
                userId: AppConstants.user.userId!,
                address: place.toString(),
                date: DateTime.now(),
                city: AppConstants.city,
                street: AppConstants.street,
                languageCode: AppConstants.languageCode!));
        result.fold((failure) {
          emit(FailCheckedInAttendanceState(message: failure.message));
        }, (response) {
          AppConstants.isCheckedIn = true;
          AppConstants.isCheckedOut = false;
          AppConstants.lastCheckIn=response.data;
          AppConstants.checkOutModel=null;
          emit(SuccessCheckedInAttendanceState(message: response.message));
        });
      });
    }).catchError((e) {
      emit(FailGetCurrentLocationAttendanceState(message: e));
    });
  }

  checkOut() async {
    emit(LoadingGetCurrentLocationAttendanceState());
    var loc = LocationService();
    loc.getCurrentLocation().then((value) async {
      AppConstants.lang = value.longitude.toString();
      AppConstants.lat = value.latitude.toString();
      placemarkFromCoordinates(value.latitude, value.longitude,
              localeIdentifier: 'ar')
          .then((List<Placemark> placemarks) async {
        place = placemarks[0];
        AppConstants.city = place!.subAdministrativeArea!;
        AppConstants.street = place!.locality!;
        final result = await petCokeRepository.checkOut(
            checkOut: SendLocationModel(
                lat: AppConstants.lat,
                lng: AppConstants.lang,
                action: 'CheckOut',
                userId: AppConstants.user.userId!,
                address: place.toString(),
                date: DateTime.now(),
                city: AppConstants.city,
                street: AppConstants.street,
                languageCode: AppConstants.languageCode));
        result.fold((failure) {
          emit(FailCheckedOutAttendanceState(message: failure.message));
        }, (response) {
          AppConstants.checkOutModel=response.data;
          AppConstants.isCheckedOut = true;
          AppConstants.isCheckedIn = false;
          //AppConstants.currentCheckModel=null;
          emit(SuccessCheckedOutAttendanceState(message: response.message));
        });
      });
    }).catchError((e) {
      emit(FailGetCurrentLocationAttendanceState(message: e));
    });
  }

  checkAttendance()async
  {
    emit(LoadingCheckCurrentAttendanceAttendanceStates());
    final result = await petCokeRepository.checkAttendance(
        currentCheck: SendLocationModel(
            lat: "",
            lng: "",
            action: "",
            userId: AppConstants.user.userId!,
            address:"",
            date: DateTime.now(),
            city: "",
            street: "",
            languageCode: AppConstants.languageCode));
    result.fold((failure) {
      emit(FailCheckCurrentAttendanceAttendanceStates(message: failure.message));
    }, (response) {
      AppConstants.currentCheckModel=response.data;
      if(response.flag==true && response.data==null)
      {
        AppConstants.isCheckedIn=false;
        AppConstants.checkOutModel=null;
        AppConstants.lastCheckIn=null;
      }
      if(response.flag==true && response.data!=null)
      {
        AppConstants.isCheckedIn=true;
        AppConstants.isCheckedOut=false;
        AppConstants.checkOutModel=null;
        AppConstants.lastCheckIn=response.data;
      }
      emit(SuccessCheckCurrentAttendanceAttendanceStates(message: response.message));
    });
  }
}
