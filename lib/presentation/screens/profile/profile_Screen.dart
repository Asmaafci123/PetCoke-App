import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/logic/profile_cubit/profile_cubit.dart';
import 'package:petcoke/logic/profile_cubit/profile_states.dart';
import 'package:petcoke/presentation/screens/profile/widgets/change_password_form.dart';
import 'package:petcoke/presentation/screens/profile/widgets/user_information.dart';
import '../../../core/constants/app_strings.dart';
import '../../../custom_icon.dart';
import '../../../injection_container.dart';
import '../../utils/dialogs/loading_dialog.dart';
import '../../utils/dialogs/message_dialog.dart';
import '../../widgets/main-button.dart';
import '../Home/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return BlocProvider<ProfileCubit>(
      create: (context) => sl<ProfileCubit>(),
      child: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {
          if (state is LoadingChangeCurrentPassword) {
            loadingAlertDialog(context);
          }
          if (state is FailChangeCurrentPassword) {
            Navigator.pop(context);
            //message from backend
            showMessageDialog(
                height: 300.h,
                context: context, message: state.message, isSucceeded: false);
          }
          if (state is SuccessChangeCurrentPassword) {
            Navigator.pop(context);
            showMessageDialog(
                height: 300.h,
                context: context,
                isSucceeded: true,
                message:state.message,
                onPressedOk: () {
                  ProfileCubit.get(context).clearChangePassword();
                });
          }
        },
        builder: (context, state) {
          var cubit = ProfileCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.w, 30.h, 10.w, 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Profile".tr(),
                          style: TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Material(
                          color: Colors.white,
                          child : InkWell(
                            child : context.locale == const Locale('ar')
                                ?Icon(Icons.keyboard_arrow_left_outlined,size: 35.sp,weight:100.sp,)
                                :Icon(Icons.keyboard_arrow_right_outlined,size: 35.sp,weight:100.sp,),
                            onTap : () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.mainColor, width: 0.5.w),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 130.h,
                          width: 120.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset("assets/images/profile_image.png",
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const UserInformation()
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Divider(
                      height: 20.h,
                      endIndent: 10.w,
                      color: Colors.grey,
                      indent: 10.w,
                      thickness: 0.2.sp,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      AppStrings.changeCurrentPassword.tr(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 20.sp,
                        fontFamily: "Cairo",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ChangePasswordForm(formKey: _formKey,)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
