import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app-colors.dart';
import '../../core/constants/app_assets.dart';
import '../../core/constants/app_constants.dart';
import '../screens/Home/home_screen.dart';
import '../utils/helpers/helpers.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // bool isHome = ModalRoute.of(context)?.settings.name == HomeScreen.routeName;
   // bool isPreCheck = ModalRoute.of(context)?.settings.name == PreCheckQuestions.routeName;

    var style = TextStyle(
        color: AppColors.mainColor,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        fontSize: 20.0.sp);
    return SizedBox(
      width: 273.w,
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 25.h),
          child: ListView(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.zero,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, size: 35.w),
                  ),
                ),
              ),
              Image.asset(
                AppAssets.profile,
                height: 150.h,
                width: 150.h,
              ),
              SizedBox(
                height: 13.h,
              ),
              // Align(
              //   alignment: Alignment.center,
              //   child: Text(
              //     AppConstants.user.driverName,
              //     style: TextStyle(
              //         color: const Color(0xff293064),
              //         fontWeight: FontWeight.w700,
              //         fontFamily: "Roboto",
              //         fontStyle: FontStyle.normal,
              //         fontSize: 22.0.sp),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Divider(
                  thickness: 1,
                  color: AppColors.mainColor,
                ),
              ),
              ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
                leading: Icon(
                  Icons.home,
                  color: AppColors.mainColor,
                  size: 30.r,
                ),
                dense: true,
                minLeadingWidth: 0,
                // horizontalTitleGap: 0,
                title: Text(
                  "الصفحة الرئيسية",
                  style: TextStyle(
                      color:AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0.sp),
                ),
                onTap: () {
                  Navigator.pop(context);
                 // HomeCubit.get(context).checkTripStatus();
                },
              ),
              ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
                leading: Icon(
                  Icons.co_present,
                  color:  AppColors.mainColor,
                  size: 30.r,
                ),
                dense: true,
                minLeadingWidth: 0,
                // horizontalTitleGap: 0,
                title: Text(
                  "التوقيت",
                  style: TextStyle(
                      color:AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      fontSize: 20.0.sp),
                ),
                onTap: () {
                  Navigator.pop(context);
                 // HomeCubit.get(context).checkTripStatus();
                },
              ),
              ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
                leading: Icon(
                  Icons.fire_truck,
                  color: AppColors.mainColor,
                  size: 30.r,
                ),
                dense: true,
                minLeadingWidth: 0,
                // horizontalTitleGap: 0,
                title: Text(
                  "تسجيل شحنة",
                  style: style,
                ),
                onTap: () {
                  Navigator.pop(context);
                 // logOut(context);
                },
              ),
              ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
                leading: Icon(
                  Icons.language,
                  color: AppColors.mainColor,
                  size: 30.r,
                ),
                dense: true,
                minLeadingWidth: 0,
                // horizontalTitleGap: 0,
                title: Text(
                  "اللغة",
                  style: style,
                ),
                onTap: () {
                  Navigator.pop(context);
                  // logOut(context);
                },
              ),
              ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
                leading: Icon(
                  Icons.person,
                  color: AppColors.mainColor,
                  size: 30.r,
                ),
                dense: true,
                minLeadingWidth: 0,
                // horizontalTitleGap: 0,
                title: Text(
                  "الملف الشخصى",
                  style: style,
                ),
                onTap: () {
                  Navigator.pop(context);
                  // logOut(context);
                },
              ),
              ListTile(
                contentPadding:
                EdgeInsets.symmetric(vertical: 2.h, horizontal: 12.w),
                leading: Icon(
                  Icons.logout,
                  color: AppColors.mainColor,
                  size: 30.r,
                ),
                dense: true,
                minLeadingWidth: 0,
                // horizontalTitleGap: 0,
                title: Text(
                  "تسجيل خروج",
                  style: style,
                ),
                onTap: () {
                  Navigator.pop(context);
                  logOut(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}