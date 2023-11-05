import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/login/widgets/logo.dart';
import '../../../core/constants/app-colors.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/app_strings.dart';
import '../../../injection_container.dart';
import '../../../logic/login_cubit/login_cubit.dart';
import '../../../logic/login_cubit/login_states.dart';
import '../../utils/dialogs/loading_dialog.dart';
import '../../utils/dialogs/message_dialog.dart';
import '../../widgets/main-button.dart';
import '../../widgets/my_textformfield.dart';
import '../../widgets/powered_by_cemex.dart';
import '../Home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print(AppConstants.credentialDetails);
    return BlocProvider(
  create:  (context) => sl<LoginCubit>(),
  child: BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {
        if (state is LoginUserLoading) {
          loadingAlertDialog(context);
        }
        if (state is LoginUserFail) {
          Navigator.pop(context);
          //message from backend
          showMessageDialog(
              height: 300.h,
              context: context, message: state.message, isSucceeded: false);
        }
        if (state is LoginUserSuccess) {
          Navigator.pop(context);
          showMessageDialog(
            height: 300.h,
              context: context,
              isSucceeded: true,
              message:AppStrings.successLogin.tr(),
              onPressedOk: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, HomeScreen.routeName, (route) => false);
              });
        }
      },
      builder: (context, state) {
        var _cubit = LoginCubit.get(context);
        print(_cubit.passwordController.text);
        print(AppConstants.credentialDetails);
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const LogoWidget(),
                          Text(
                            AppStrings.login.tr(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.redColor,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                MyTextFormField(
                                  controller: _cubit.serialNumberController,
                                  label: "Id",
                                  errorText: _cubit.errorMessage ==
                                      "serial number isn't exit".tr()
                                      ? _cubit.errorMessage
                                      : null,
                                  prefixIcon: Icons.person_outline_sharp,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp("[0-9]")),
                                  ],
                                  validator: (String? value) {
                                    print(context.locale);
                                    if (value!.isEmpty) return AppStrings.required.tr();
                                  },
                                  keyboardType: TextInputType.number,
                                ),
                                MyTextFormField(
                                  controller: _cubit.passwordController,
                                  label: "password".tr(),
                                  errorText: _cubit.errorMessage ==
                                      "password is wrong".tr()
                                      ? _cubit.errorMessage
                                      : null,
                                  obscureText: !_cubit.isTextVisible,
                                  suffixOnPressed: () =>
                                      _cubit.changeTextVisibility(
                                          !_cubit.isTextVisible),
                                  suffixIcon: !_cubit.isTextVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.remove_red_eye_outlined,
                                  prefixIcon: Icons.lock_outline,
                                  validator: (String? value) {
                                    if (value!.isEmpty) return AppStrings.required.tr();
                                    return null;
                                  },
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                DropdownButtonFormField(
                                  style: TextStyle(color:AppColors.mainColor, fontSize: 12.sp),
                                  validator: (String? value) {
                                    if (value == null) return AppStrings.required.tr();
                                    return null;
                                  },
                                   isDense: false,
                                  value: AppConstants.languageCode=='en'?'English':AppConstants.languageCode=='ar'?'Arabic':null,
                                   //itemHeight: 50.h,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    contentPadding: EdgeInsets.symmetric(vertical: 6.h,horizontal: 8.w),
                                    suffixIconConstraints:
                                    BoxConstraints(minHeight: 50.h, minWidth: 50.w),
                                    prefixIconConstraints:
                                    BoxConstraints(minHeight: 20.h, minWidth: 40.w),
                                    prefixIcon: Icon(Icons.language),
                                    border:OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16.r),
                                      borderSide: BorderSide(color: AppColors.greyColor),
                                    ),
                                  //  labelText: AppStrings.language.tr(),
                                    hintText: AppStrings.enterLanguage.tr(),
                                    //labelStyle: TextStyle(fontSize: 14.sp),
                                    hintStyle:TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                                    errorStyle: TextStyle(fontSize: 12.sp),
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                  ),
                                  items: ['English', 'Arabic'].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value == 'Arabic' ? "عربى" : value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                   // _cubit.changeAppLanguage(newValue!);
                                    if (newValue == 'English') {
                                       context.setLocale(Locale('en'));
                                      AppConstants.languageCode='en';
                                    } else {
                                      context.setLocale(Locale('ar'));
                                      AppConstants.languageCode='ar';
                                    }
                                    _cubit.toggleLanguage(AppConstants.languageCode);
                                  },
                                  iconSize: 20.r,
                                ),
                                SizedBox(
                                  height: 60.h,
                                ),
                                MainButton(
                                  onPressed: () {
                                    if(_formKey.currentState!.validate())
                                    {
                                     _cubit.loginUser();
                                     // _cubit.getDeviceId();
                                      // Navigator.pushNamedAndRemoveUntil(
                                      //     context, HomeScreen.routeName, (route) => false);
                                    }
                                  }, title:"login button title".tr(),),
                              ],
                            ),
                          ),
                          const Spacer(),
                          const Center(child: PoweredByCemex()),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                  )]),
          ),
        );
      },
    ),
);
  }
}