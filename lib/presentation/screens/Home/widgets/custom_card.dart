import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';
import 'package:petcoke/core/constants/app_constants.dart';

import 'circle_left.dart';
import 'circle_right.dart';
import 'container_data.dart';

class CustomCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback onTap;
  final Color color;
  const CustomCard(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onTap,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment:Alignment.bottomLeft,
        children: [
          Container(
            height:180.h,
            width: 167.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: color),
          ),
          AppConstants.languageCode=="en"?
          const CircleRight(imagePath:'assets/images/circle1.png',) :
          const CircleLeft(imagePath: 'assets/images/circle3.png',),
          AppConstants.languageCode=="en"?
          const CircleRight(imagePath:'assets/images/circle2.png',) :
          const CircleLeft(imagePath: 'assets/images/circle4.png',),
          AppConstants.languageCode=="en"?
          Positioned(
            left: 10.w,
            right:5.w,
            bottom: 15.h,
            child:ContainerData(icon:icon,title: title,),
          )
          : Positioned(
             right: 10.w,
            left: 5.w,
            bottom: 15.h,
            child:ContainerData(icon:icon,title: title,),
          ),
        ],
      ),
    );
  }
}
