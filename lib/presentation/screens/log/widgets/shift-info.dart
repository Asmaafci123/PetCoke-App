import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';
import 'package:petcoke/core/constants/app_strings.dart';
import 'package:petcoke/custom_icon.dart';

import '../../../../data/models/log-attendance-model/log-attendance-model.dart';
class ShiftInfo extends StatelessWidget {
  final LogAttendanceModel model;
  const ShiftInfo({Key? key,required this.model}) : super(key: key);


  String timeForAttendance(int hours,int minutes)
  {
    print(hours);
    print(minutes);
    String result="";
    String h="";
    String m="";
    if(hours<10) {
      h+="0$hours";
    }
    else
      {
        h+="$hours";
      }
    if(minutes<10) {
      m+="0$minutes";
    }
    else
      {
        m+="$minutes";
      }
    result="$h:$m ";
    if(hours<12)
      {
        result+="AM";
      }
    else if(hours==12 && minutes==0)
      {
        result+="AM";
      }
    else
      {
        result+="PM";
      }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ClipPath(
        clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r))),
        child:Container(
          padding: EdgeInsets.fromLTRB(15.w, 10.h, 15.w,10.h),
          height: 125.h,
          width: double.infinity,
          decoration:BoxDecoration(
          //   borderRadius: BorderRadius.circular(10.r),
            border:Border(
              left: BorderSide(
                width: 10.w,
                color: AppColors.mainColor,
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(CustomIcons.calendar_days_solid__1_,size: 18.sp,),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    //"27 OCT 2023",
                    model.day,
                    //  model.day.toString(),
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        //"8:00 AM",
                     // '${model.checkIn.hour}:${model.checkIn.minute}',
                        timeForAttendance(model.checkIn.hour,model.checkIn.minute),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp
                      ),),
                      Text(
                        //"22/10/2023",
                        '${model.checkIn.day}/${model.checkIn.month}/${model.checkIn.year}',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          fontSize: 16.sp
                        ),),
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(Icons.location_on,color: Colors.grey,size: 23.sp,),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        //"8:00 AM",
                        //'${model.checkOut.hour}:${model.checkOut.minute}',
                        timeForAttendance(model.checkOut.hour,model.checkOut.minute),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp
                        ),),
                      Text(
                        //"22/10/2023",
                        '${model.checkOut.day}/${model.checkOut.month}/${model.checkOut.year}',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp
                        ),),
                    ],
                  ),
                  Spacer(),
                  Text("${model.hours} ${AppStrings.hours.tr()}",
                    style: TextStyle(
                        color:AppColors.mainColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp
                    ),),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
