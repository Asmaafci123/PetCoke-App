import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ContainerData extends StatelessWidget {
  final Icon icon;
  final String title;

  const ContainerData({Key? key,required this.icon,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,0),
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 0, 8.w,0.h),
            child: IconButton(
              onPressed: () {},
              icon: icon,
              iconSize: 25.sp,
              color: Colors.white,
              constraints: BoxConstraints(
                minWidth: 10.w,
                minHeight: 5.h,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          AutoSizeText(
            title,
            style: TextStyle(
                color:const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500,
                fontSize:18.sp),
          ),
        ],
      ),
    );
  }
}
