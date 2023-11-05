import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../custom_icon.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../Home/home_screen.dart';
class ScreenTitle extends StatelessWidget {
  final Color color;
  const ScreenTitle({Key? key,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          child :Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 8.h),
            child: Icon(CustomIcons.home__2_,size: 22.sp,color: color,),
          ),
          onTap : () {
            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
            ShipmentRegistrationCubit.get(context).initDate();
            Navigator.of(context).pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
          },
        ),
        Text(
          AppStrings.shipmentRegistration.tr(),
          style: TextStyle(
              color:color,
              fontSize: 24.sp,
              fontWeight: FontWeight.w700),
        ),
        InkWell(
          child: context.locale == const Locale('ar')
              ? Icon(
            Icons.keyboard_arrow_left_outlined,
            size: 35.sp,
            weight: 100.sp,
            color: color,
          )
              : Icon(
            Icons.keyboard_arrow_right_outlined,
            size: 35.sp,
            weight: 100.sp,
            color: color,
          ),
          onTap: () {
            ShipmentRegistrationCubit.get(context).initDate();
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
