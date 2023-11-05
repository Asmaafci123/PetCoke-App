import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/app-colors.dart';
class MyAppBar extends StatelessWidget implements  PreferredSizeWidget{
  @override
  final Size preferredSize;
  final String title;
  MyAppBar({Key? key,required this.title}) : preferredSize = Size.fromHeight(70.h),super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(builder: (context) {
        return IconButton(
            icon:context.locale==const Locale('en')?const Icon(Icons.keyboard_arrow_left_outlined):const Icon(Icons.keyboard_arrow_right_outlined),
            iconSize: 35.sp,
            onPressed: () {
             Navigator.pop(context);
            });
      }),
      scrolledUnderElevation: 0,
      toolbarHeight: 60,
      automaticallyImplyLeading: false,
      elevation: 0,
      iconTheme:const IconThemeData(color: AppColors.redColor),
      title:Text(
        title,
        style: TextStyle(
            color: AppColors.redColor,
            fontSize: 25.sp,
        ),
      ),
      backgroundColor:title== "Shipped Registration".tr()?AppColors.mainColor:Colors.white,
      centerTitle: true,
      leadingWidth: 72,
    );
  }
}
