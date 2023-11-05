import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app-colors.dart';
import '../../core/constants/app_strings.dart';
class CustomDropDown extends StatelessWidget {
  final String hint;
  final String label;
  final Widget icon;

  const CustomDropDown({Key? key,required this.hint,required this.icon,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style: TextStyle(
          color: AppColors.mainColor,
          fontSize: 12.sp),
      validator: (String? value) {
        if (value == null)
          return AppStrings.required.tr();
        return null;
      },
      icon: const Icon(
        Icons.arrow_drop_down_outlined,
        color: AppColors.mainColor,
      ),
     //isDense: false,
      // itemHeight: 40.h,
      isExpanded: true,
      decoration: InputDecoration(
        isDense: false,
        contentPadding: EdgeInsets.symmetric(
            vertical: 10.h, horizontal: 8.w),
        suffixIconConstraints: BoxConstraints(
            minHeight: 50.h, minWidth: 50.w),
        prefixIconConstraints: BoxConstraints(
            minHeight: 20.h, minWidth: 40.w),
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(10.r),
          borderSide: const BorderSide(
              color: AppColors.mainColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(10.r),
          borderSide: const BorderSide(
              color: AppColors.mainColor),
        ),
        labelText:label,
        hintText: hint,
        labelStyle: TextStyle(fontSize: 14.sp,color: AppColors.mainColor),
        hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp),
        errorStyle: TextStyle(fontSize: 12.sp),
        floatingLabelBehavior:
        FloatingLabelBehavior.always,
      ),
      items: ['English', 'Arabic Arabic Arabic Arabic Arabic']
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child:AutoSizeText (
              value == 'Arabic' ? "عربى عربى عرب عربى" : value
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        // _cubit.changeAppLanguage(newValue!);
      },
      iconSize: 20.r,
    );
  }
}
