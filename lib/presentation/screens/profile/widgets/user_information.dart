import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../custom_icon.dart';
class UserInformation extends StatelessWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              CustomIcons.user,
              color: AppColors.mainColor,
              size: 30.sp,
            ),
            SizedBox(
              width: 10.w,
            ),
            AutoSizeText(
              AppConstants.user.employeeName!,
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20.sp,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              CustomIcons.phone_call,
              color: AppColors.mainColor,
              size: 30.sp,
            ),
            SizedBox(
              width: 10.w,
            ),
            AutoSizeText(
              AppConstants.user.mobile!,
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              CustomIcons.fingerprint,
              color: AppColors.mainColor,
              size: 30.sp,
            ),
            SizedBox(
              width: 10.w,
            ),
            AutoSizeText(
              AppConstants.user.cemexId.toString(),
              style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
          ],
        )
      ],
    );
  }
}
