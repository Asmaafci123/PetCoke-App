import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../custom_icon.dart';
import '../../../../logic/profile_cubit/profile_cubit.dart';
import '../../../widgets/main-button.dart';
class ChangePasswordForm extends StatelessWidget {
  final GlobalKey<FormState>  formKey;
  const ChangePasswordForm({Key? key,required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = ProfileCubit.get(context);
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: cubit.currentPasswordController,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.mainColor,
                fontSize: 12.sp),
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.h),
              suffixIconConstraints:
              BoxConstraints(minHeight: 50.h, minWidth: 50.w),
              prefixIconConstraints:
              BoxConstraints(minHeight: 20.h, minWidth: 40.w),
              prefixIcon: Icon(
                CustomIcons.lock2,
                size: 20.r,
              ),
              suffixIcon: Material(
                color: Colors.transparent,
                type: MaterialType.circle,
                clipBehavior: Clip.antiAlias,
                borderOnForeground: true,
                elevation: 0,
                child: IconButton(
                  onPressed: () => cubit
                      .changeCurrentPasswordVisible(!cubit.isCurrentPasswordVisible),
                  icon: !cubit.isCurrentPasswordVisible
                      ? Icon(
                    Icons.visibility_off_outlined,
                    size: 30.r,
                  )
                      : Icon(
                    Icons.remove_red_eye_outlined,
                    size: 30.r,
                  ),
                ),
              ),
              border: const OutlineInputBorder(),
              labelText: AppStrings.currentPassword.tr(),
              hintText: AppStrings.enterCurrentPassword.tr(),
              errorMaxLines: 3,
              hintStyle: TextStyle(
                  color: Color(0xffc1c1c1), fontSize: 14.sp),
              labelStyle: TextStyle(
                  color: Color(0xffc1c1c1), fontSize: 12.sp),
              errorStyle: TextStyle(fontSize: 12.sp),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText:!cubit.isCurrentPasswordVisible,
            validator: (String? value) {
              if (value!.isEmpty) return AppStrings.required.tr();
              if(value!=AppConstants.user.password) return AppStrings.wrongPassword.tr();
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          TextFormField(
            controller: cubit.newPasswordController,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.mainColor,
                fontSize: 12.sp),
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.h),
              suffixIconConstraints:
              BoxConstraints(minHeight: 50.h, minWidth: 50.w),
              prefixIconConstraints:
              BoxConstraints(minHeight: 20.h, minWidth: 40.w),
              prefixIcon: Icon(
                CustomIcons.lock2,
                size: 20.r,
              ),
              suffixIcon: Material(
                color: Colors.transparent,
                type: MaterialType.circle,
                clipBehavior: Clip.antiAlias,
                borderOnForeground: true,
                elevation: 0,
                child: IconButton(
                  onPressed: () => cubit
                      .changeNewPasswordVisible(!cubit.isNewPasswordVisible),
                  icon: !cubit.isNewPasswordVisible
                      ? Icon(
                    Icons.visibility_off_outlined,
                    size: 30.r,
                  )
                      : Icon(
                    Icons.remove_red_eye_outlined,
                    size: 30.r,
                  ),
                ),
              ),
              border: const OutlineInputBorder(),
              labelText: AppStrings.newPassword.tr(),
              hintText: AppStrings.enterNewPassword.tr(),
              errorMaxLines: 3,
              hintStyle: TextStyle(
                  color: const Color(0xffc1c1c1), fontSize: 14.sp),
              labelStyle: TextStyle(
                  color: const Color(0xffc1c1c1), fontSize: 12.sp),
              errorStyle: TextStyle(fontSize: 12.sp),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText:!cubit.isNewPasswordVisible,
            validator: (String? value) {
              if (value!.isEmpty) return AppStrings.required.tr();
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          TextFormField(
            controller: cubit.confirmNewPasswordController,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.mainColor,
                fontSize: 12.sp),
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.h),
              suffixIconConstraints:
              BoxConstraints(minHeight: 50.h, minWidth: 50.w),
              prefixIconConstraints:
              BoxConstraints(minHeight: 20.h, minWidth: 40.w),
              prefixIcon: Icon(
                CustomIcons.lock2,
                size: 20.r,
              ),
              suffixIcon: Material(
                color: Colors.transparent,
                type: MaterialType.circle,
                clipBehavior: Clip.antiAlias,
                borderOnForeground: true,
                elevation: 0,
                child: IconButton(
                  onPressed: () => cubit
                      .changeConfirmNewPasswordVisible(!cubit.isConfirmNewPasswordVisible),
                  icon: !cubit.isConfirmNewPasswordVisible
                      ? Icon(
                    Icons.visibility_off_outlined,
                    size: 30.r,
                  )
                      : Icon(
                    Icons.remove_red_eye_outlined,
                    size: 30.r,
                  ),
                ),
              ),
              border: const OutlineInputBorder(),
              labelText: AppStrings.confirmNewPassword.tr(),
              hintText: AppStrings.confirmNewPassword.tr(),
              errorMaxLines: 3,
              hintStyle: TextStyle(
                  color: const Color(0xffc1c1c1), fontSize: 14.sp),
              labelStyle: TextStyle(
                  color:const Color(0xffc1c1c1), fontSize: 12.sp),
              errorStyle: TextStyle(fontSize: 12.sp),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText:
            !cubit
                .isConfirmNewPasswordVisible,
            // validator:
            // validatePassword
            validator: (String? value) {
              if (value!.isEmpty) return AppStrings.required.tr();
              if(value!=cubit.newPasswordController.text) return AppStrings.passwordNotMatchedWithNewPassword.tr();
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          MainButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                cubit.changePassword();
              }
            },
            title: AppStrings.savePassword.tr(),
          ),
        ],
      ),
    );
  }
}
