import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../core/constants/app-colors.dart';
import '../../../core/constants/app_strings.dart';

showMessageDialog({
  required BuildContext context,
  String? message,
  required bool isSucceeded,
  VoidCallback? onPressedOk,
  double? height
}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0.r)),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  height: height??400.h,
                  width: 372.w,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.w, 60.h, 10.w, 20.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            message == AppStrings.detailsOfShipment.tr()
                                ? AppStrings.detailsOfShipment.tr()
                                : isSucceeded
                                    ? 'Succeeded'.tr()
                                    : 'Failed'.tr(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                              color: isSucceeded
                                  ? AppColors.mainColor
                                  : AppColors.redColor,
                            ),
                          ),
                          message == AppStrings.detailsOfShipment.tr()
                              ? Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/icons/boat.png",
                                          ),
                                          width: 15.w,
                                          height: 15.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          AppStrings.vesselName.tr(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: isSucceeded
                                                ? AppColors.mainColor
                                                : AppColors.redColor,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          ShipmentRegistrationCubit.get(context)
                                              .selectedVessel!
                                              .vesselName,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp,
                                            color:AppColors.greyColor,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/icons/boat.png",
                                          ),
                                          width: 15.w,
                                          height: 15.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          AppStrings.totalVesselQuantity.tr(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: isSucceeded
                                                ? AppColors.mainColor
                                                : AppColors.redColor,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          ShipmentRegistrationCubit.get(context)
                                              .selectedVessel!
                                              .qty.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp,
                                            color:AppColors.greyColor,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: const AssetImage(
                                            "assets/icons/boat.png",
                                          ),
                                          width: 15.w,
                                          height: 15.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text(
                                          AppStrings.remainingVesselQuantity.tr(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.sp,
                                            color: isSucceeded
                                                ? AppColors.mainColor
                                                : AppColors.redColor,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          ShipmentRegistrationCubit.get(context)
                                              .selectedVessel!
                                              .remain.toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.sp,
                                            color: AppColors.greyColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              : AutoSizeText(
                                  message ?? '',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18.sp, fontFamily: 'Roboto'),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 8,
                                ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 50.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    onPressedOk?.call();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: isSucceeded
                                        ? AppColors.mainColor
                                        : AppColors.redColor,
                                  ),
                                  child: Text(
                                    "Ok".tr(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16.sp),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ]),
                  ),
                ),
                Positioned(
                    top: -50.h,
                    child: isSucceeded
                        ? CircleAvatar(
                            backgroundColor: AppColors.mainColor,
                            radius: 50.r,
                            child: Icon(
                              Icons.verified_user,
                              color: Colors.white,
                              size: 50.h,
                            ),
                          )
                        : CircleAvatar(
                            backgroundColor: AppColors.redColor,
                            radius: 50.r,
                            child: Icon(
                              Icons.privacy_tip,
                              color: Colors.white,
                              size: 50.h,
                            ),
                          )),
              ],
            )),
      );
    },
  );
}
