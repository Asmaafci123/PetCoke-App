import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/custom_icon.dart';
import 'package:petcoke/logic/Attendance_cubit/attendance_cubit.dart';

import '../../../utils/dialogs/message_dialog.dart';
import '../../../utils/helpers/helpers.dart';
import '../../Home/home_screen.dart';
import 'custom_attendance_data.dart';

class AttendanceCard extends StatefulWidget {
  const AttendanceCard({Key? key}) : super(key: key);

  @override
  State<AttendanceCard> createState() => _AttendanceCardState();
}

class _AttendanceCardState extends State<AttendanceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(CustomIcons.business_time,color: Colors.white,),
              SizedBox(
                width: 10.w,
              ),
              Text(
                "Timing".tr(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700),
              ),
              Spacer(),
              // IconButton(
              //   icon: context.locale == const Locale('ar')
              //       ? const Icon(Icons.keyboard_arrow_left_outlined)
              //       : const Icon(Icons.keyboard_arrow_right_outlined),
              //   iconSize: 35.sp,
              //   onPressed: () {
              //     //Navigator.pop(context);
              //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              //   },
              //   color: Colors.white,
              // )
              InkWell(
                child : context.locale == const Locale('ar')
                    ?Icon(Icons.keyboard_arrow_left_outlined,size: 35.sp,weight:100.sp,color: Colors.white,)
                    :Icon(Icons.keyboard_arrow_right_outlined,size: 35.sp,weight:100.sp,color: Colors.white,),
                onTap : () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                },
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 200.h,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppConstants.isCheckedIn == false
                        ? GestureDetector(
                            onTap: () {
                              AttendanceCubit.get(context).checkIn();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: 50.h,
                              width: 120.w,
                              child: Center(
                                child: Text(
                                  "CHECKIN".tr(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              height: 50.h,
                              width: 120.w,
                              child: Center(
                                child: Text(
                                  "CHECKIN".tr(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                    SizedBox(
                      width: 10.w,
                    ),
                    AppConstants.isCheckedOut == false &&
                            AppConstants.isCheckedIn == true
                        ? GestureDetector(
                            onTap: () {
                              AttendanceCubit.get(context).checkOut();
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 120.w,
                                child: Center(
                                  child: Text(
                                    "CHECKOUT".tr(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                          )
                        : GestureDetector(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                                height: 50.h,
                                width: 120.w,
                                child: Center(
                                  child: Text(
                                    "CHECKOUT".tr(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                )),
                          )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                AttendanceData(
                  id: 0,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
