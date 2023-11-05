import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_strings.dart';

class AttendanceData extends StatelessWidget {
  final int id;
  const AttendanceData({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String time =
        '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()}';
    return Padding(
      padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 10.h),
      child: SizedBox(
        height: 100.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 70.w,
              child: Column(
                children: [
                  Text(
                    AppStrings.day.tr(),
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    //DateTime.now().toString().split(' ').first,
                    id == 0
                        ? DateTime.now().toString().split(' ').first
                        : id == 1
                            ? AppConstants.lastCheckIn != null
                                ? AppConstants.lastCheckIn!.date
                                    .toString()
                                    .split(' ')
                                    .first
                                : "_"
                            : AppConstants.checkOutModel == null
                                ? "_"
                                : AppConstants.checkOutModel!.date
                                    .toString()
                                    .split(' ')
                                    .first,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              color: Colors.grey,
              height: 35.h,
              width: 0.5.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            SizedBox(
              width: 40.w,
              child: Column(
                children: [
                  Text(
                    AppStrings.time.tr(),
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  id==0?Text(
                    '${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ):id==1?
                  Text(
                    AppConstants.lastCheckIn != null?
                    '${AppConstants.lastCheckIn!.date.hour.toString()}:${AppConstants.lastCheckIn!.date.minute.toString()}'
                                : "_",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ):
                  Text(
                     AppConstants.checkOutModel != null?
                     '${AppConstants.checkOutModel!.date.hour.toString()}:${AppConstants.checkOutModel!.date.minute.toString()}':
                        "_",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              color: Colors.grey,
              height: 35.h,
              width: 0.5.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            SizedBox(
              width: 60.w,
              child: Column(
                children: [
                  Text(
                    AppStrings.city.tr(),
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  AutoSizeText(
                    id == 0
                        ? AppConstants.city
                        : id == 1
                            ? AppConstants.lastCheckIn != null
                                ? AppConstants.lastCheckIn!.city
                                : "_"
                            : AppConstants.checkOutModel != null
                                ? AppConstants.checkOutModel!.city
                                : "_",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Container(
              color: Colors.grey,
              height: 35.h,
              width: 0.5.w,
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: SizedBox(
                width: 60.w,
                child: Column(
                  children: [
                    Text(
                      AppStrings.street.tr(),
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Expanded(
                        child: AutoSizeText(
                      id == 0
                          ? AppConstants.street
                          : id == 1
                              ? AppConstants.lastCheckIn != null
                                  ? AppConstants.lastCheckIn!.street
                                  : "_"
                              : AppConstants.checkOutModel != null
                                  ? AppConstants.checkOutModel!.street
                                  : "_",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400),
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
