import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: InkWell(
        child: context.locale == const Locale('ar')
            ? Icon(
          Icons.keyboard_arrow_left_outlined,
          size: 35.sp,
          weight: 100.sp,
          color:AppColors.mainColor,
        )
            : Icon(
          Icons.keyboard_arrow_right_outlined,
          size: 35.sp,
          weight: 100.sp,
          color: AppColors.mainColor,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
