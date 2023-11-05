import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/data/models/credential_model/credential_model.dart';

import '../../data/models/user/user.dart';
import '../../data/repositories/petcoke_repository.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  static LoginCubit get(context) => BlocProvider.of(context);
  final PetCokeRepository petCokeRepository;

  LoginCubit({required this.petCokeRepository}) : super(InitialLoginState());

  TextEditingController serialNumberController = TextEditingController(text: AppConstants.credentialDetails?.cemexId!=null?AppConstants.credentialDetails?.cemexId.toString():"");
  TextEditingController passwordController = TextEditingController(text: AppConstants.credentialDetails?.password??"");

  bool isTextVisible = false;

// hide or visible password text
  void changeTextVisibility(bool value) {
    isTextVisible = value;
    emit(ChangePasswordVisibilityState());
  }
  String errorMessage = '';
  String deviceId='';
  getDeviceId()async
  {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if(defaultTargetPlatform==TargetPlatform.android)
   {
     AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
     deviceId=androidInfo.id;
   }
    else if(defaultTargetPlatform==TargetPlatform.windows)
      {
        WindowsDeviceInfo windowsDeviceInfo = await deviceInfo.windowsInfo;
        deviceId=windowsDeviceInfo.deviceId;
      }
  }
  Future<void> loginUser() async {
    emit(LoginUserLoading());
    await getDeviceId();
    print(User(
        cemexId:int.parse(serialNumberController.text.split(" ").join("")),
        password: passwordController.text.split(" ").join(""),
        userId:"",
        employeeName: "",
        mobileSerial: deviceId,
        mobile: "",
        languageCode: AppConstants.languageCode
    ).toJson());
    final result = await petCokeRepository.loginUser(
        user: User(
        cemexId:int.parse(serialNumberController.text.split(" ").join("")),
        password: passwordController.text.split(" ").join(""),
        userId:"",
        employeeName: "",
        mobileSerial: deviceId,
        mobile: "",
        languageCode: AppConstants.languageCode
    ));
    result.fold((failure) {
      errorMessage = failure.message;
      emit(LoginUserFail(failure.message));
    },(userResponse) {
      AppConstants.user=userResponse.data;
      AppConstants.credentialDetails=CredentialDetails(cemexId: AppConstants.user.cemexId,password: AppConstants.user.password,languageCode: AppConstants.languageCode);
      emit(LoginUserSuccess());
    });
  }
  toggleLanguage(String code) async{
    AppConstants.languageCode = code;
    await petCokeRepository.toggleLanguage();
    emit(ToggleLanguageSuccess());
  }
}