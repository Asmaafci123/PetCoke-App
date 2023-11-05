import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';
import 'package:petcoke/core/constants/app_strings.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../widgets/powered_by_cemex.dart';

class VesselDialog extends StatelessWidget {
  const VesselDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
      insetPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: SizedBox(
        width: 200.w,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.w, 20.h, 10.w, 20.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage(
                        "assets/icons/boat.png",
                      ),
                      width: 30.w,
                      height: 30.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      ShipmentRegistrationCubit.get(context)
                          .selectedVessel!
                          .vesselName,
                      // "test"*10,
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/quantity.png",
                          width: 20.w,
                          height: 20.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          AppStrings.totalQuantity.tr(),
                          style: TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          ShipmentRegistrationCubit.get(context)
                              .selectedVessel!
                              .qty
                              .toString(),
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/quantity.png",
                          width: 20.w,
                          height: 20.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          AppStrings.remainQuantity.tr(),
                          style: TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          ShipmentRegistrationCubit.get(context)
                              .selectedVessel!
                              .remain
                              .toString(),
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Center(
                      child: Text(
                        "غلق",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
