import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/custom_icon.dart';
import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_strings.dart';

class AttendanceData1 extends StatelessWidget {
  final int id;
  const AttendanceData1({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String time =
        '${DateTime.now().hour.toString()} : ${DateTime.now().minute.toString()}';
    return Padding(
      padding: EdgeInsets.fromLTRB(15.w, 0, 15.w, 10.h),
      child: SizedBox(
        height: 170.h,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  CustomIcons.business_time,
                  color: AppColors.mainColor,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  AppStrings.day.tr(),
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 18.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 10.w,
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
                      color: Colors.grey[700],
                      fontSize: 16.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  CustomIcons.clock,
                  color: AppColors.mainColor,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  AppStrings.time.tr(),
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 18.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 10.w,
                ),
                id == 0
                    ? Text(
                        '${DateTime.now().hour.toString()}:${DateTime.now().minute.toString()}',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16.sp,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w400),
                      )
                    : id == 1
                        ? Text(
                            AppConstants.lastCheckIn != null
                                ? '${AppConstants.lastCheckIn!.date.hour.toString()}:${AppConstants.lastCheckIn!.date.minute.toString()}'
                                : "_",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16.sp,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w400),
                          )
                        : Text(
                            AppConstants.checkOutModel != null
                                ? '${AppConstants.checkOutModel!.date.hour.toString()}:${AppConstants.checkOutModel!.date.minute.toString()}'
                                : "_",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16.sp,
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w400),
                          ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_city,
                  color: AppColors.mainColor,
                  size: 22.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  AppStrings.city.tr(),
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment:AppConstants.languageCode=="ar"?
                    Alignment.topRight:
                    Alignment.topLeft,
                    child: Text(
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
                          color: Colors.grey[700],
                          fontSize: 16.sp,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w400),
                      maxLines: 1,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  CustomIcons.home__2_,
                  color: AppColors.mainColor,
                  size: 20.sp,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  AppStrings.street.tr(),
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16.sp,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment:AppConstants.languageCode=="ar"?
                      Alignment.topRight:
                      Alignment.topLeft,
                      child:Text(
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
                        color: Colors.grey[700],
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
