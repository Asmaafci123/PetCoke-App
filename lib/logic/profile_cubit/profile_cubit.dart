import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/logic/profile_cubit/profile_states.dart';

import '../../data/models/credential_model/credential_model.dart';
import '../../data/models/user/user.dart';
import '../../data/repositories/petcoke_repository.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  static ProfileCubit get(context) => BlocProvider.of(context);
  final PetCokeRepository petCokeRepository;

  ProfileCubit({required this.petCokeRepository})
      : super(InitialProfileState());

  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmNewPasswordController = TextEditingController();

  bool isCurrentPasswordVisible = false;
  bool isNewPasswordVisible = false;
  bool isConfirmNewPasswordVisible = false;
  void changeCurrentPasswordVisible(bool value) {
    isCurrentPasswordVisible = value;
    emit(ChangePasswordVisibilityState());
  }

  void changeNewPasswordVisible(bool value) {
    isNewPasswordVisible = value;
    emit(ChangePasswordVisibilityState());
  }

  void changeConfirmNewPasswordVisible(bool value) {
    isConfirmNewPasswordVisible = value;
    emit(ChangePasswordVisibilityState());
  }

  changePassword() async {
    emit(LoadingChangeCurrentPassword());
    final result = await petCokeRepository.changePassword(
        user: User(
            cemexId: AppConstants.user.cemexId,
            mobileSerial: AppConstants.user.mobileSerial,
            mobile: AppConstants.user.mobile,
            userId: AppConstants.user.userId,
            languageCode: AppConstants.languageCode,
            password: AppConstants.user.password,
            newPassword: newPasswordController.text,
            employeeName: AppConstants.user.employeeName));
    result.fold((failure) {
      emit(FailChangeCurrentPassword(failure.message));
    }, (userResponse) {
      AppConstants.user = userResponse.data;
      AppConstants.credentialDetails=CredentialDetails(cemexId: AppConstants.user.cemexId,password: AppConstants.user.password);
      print(AppConstants.credentialDetails);
      emit(SuccessChangeCurrentPassword(userResponse.message));
    });
  }

  clearChangePassword() {
    isCurrentPasswordVisible = false;
    isNewPasswordVisible = false;
    isConfirmNewPasswordVisible = false;
    currentPasswordController.clear();
    newPasswordController.clear();
    confirmNewPasswordController.clear();
    emit(SuccessClearChangePasswordState());
  }
}
