import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepTitle extends StatelessWidget {
  final String title;
  final bool isActive;
  final Color? titleColor;
  const StepTitle({Key? key, required this.title, required this.isActive,this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: isActive ? Colors.black :titleColor?? Colors.grey,
          fontSize: isActive ? 18.sp : 16.sp),
    );
  }
}
