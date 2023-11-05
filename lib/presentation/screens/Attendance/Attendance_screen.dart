 import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app_strings.dart';
import 'package:petcoke/custom_icon.dart';
import 'package:petcoke/presentation/screens/Attendance/widgets/attendance_card.dart';
import 'package:petcoke/presentation/screens/Attendance/widgets/attendance_data_1.dart';
import '../../../core/constants/app-colors.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_constants.dart';
import '../../../logic/Attendance_cubit/attendance_cubit.dart';
import '../../../logic/Attendance_cubit/attendance_states.dart';
import '../../utils/dialogs/loading_dialog.dart';
import '../../utils/dialogs/message_dialog.dart';

class AttendanceScreen extends StatefulWidget {
  static const routeName = 'AttendanceScreen';
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async{
      await AttendanceCubit.get(context).checkAttendance();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttendanceCubit, AttendanceStates>(
      listener: (context, state) {

        if (state is LoadingCheckCurrentAttendanceAttendanceStates) {
          loadingAlertDialog(context);
        }
        if (state is SuccessCheckCurrentAttendanceAttendanceStates) {
          Navigator.pop(context);
        //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AttendanceScreen()));
        }
        if (state is FailCheckCurrentAttendanceAttendanceStates) {
          Navigator.pop(context);
          showMessageDialog(
            height: 300.h,
            context: context,
            message: state.message,
            isSucceeded: false,
          );
        }
        if (state is LoadingGetCurrentLocationAttendanceState) {
          loadingAlertDialog(context);
        }
        if (state is FailGetCurrentLocationAttendanceState) {
          Navigator.pop(context);
          showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: false);
        }
        if (state is SuccessGetCurrentLocationAttendanceState) {
          Navigator.pop(context);
        }
        if (state is LoadingCheckedInAttendanceState) {
          loadingAlertDialog(context);
        }
        if (state is FailCheckedInAttendanceState) {
          Navigator.pop(context);
          showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: false);
        }

        if (state is SuccessCheckedInAttendanceState) {
          Navigator.pop(context);
          showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: true);
        }

        if (state is LoadingCheckedOutAttendanceState) {
          loadingAlertDialog(context);
        }
        if (state is FailCheckedOutAttendanceState) {
          Navigator.pop(context);
          showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: false);
        }

        if (state is SuccessCheckedOutAttendanceState) {
          Navigator.pop(context);
          showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: true);
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 900.h,
                decoration: const BoxDecoration(color: Colors.white),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  height: 150.h,
                  decoration: const BoxDecoration(color: AppColors.mainColor),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 20.h,
                child: AttendanceCard(),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 310.h,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                  child: Container(
                    height: 250.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CustomIcons.home__2_,
                              color: AppColors.mainColor,
                              size: 25.sp,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              AppStrings.checkIn.tr(),
                              style: TextStyle(
                                  color: AppColors.mainColor,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        //AttendanceData(id: 1,),
                        AttendanceData1(id: 1),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 580.h,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
                  child: Container(
                    height: 260.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: 30.h,
                                width: 40.w,
                                child: Image.asset(
                                  AppConstants.languageCode=="ar"?
                                  AppAssets.login:AppAssets.loginEN,
                                  fit: BoxFit.contain,
                                  color: AppColors.mainColor,
                                )),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              AppStrings.checkOut.tr(),
                              style: TextStyle(
                                  color: AppColors.mainColor,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        AttendanceData1(id: 2),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
      },
    );
  }
}
