import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/remain_quantity.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/step_title.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/text_field.dart';
import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../data/models/vessel/vessel.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../utils/dialogs/model_bottom_sheet.dart';
import 'group_container.dart';

EnhanceStep shipStep(BuildContext context, GlobalKey<FormState> formKey) {
  //var cubit = ShipmentRegistrationCubit.get(context);
  bool isActive=ShipmentRegistrationCubit.get(context).currentStepInStepper==0;
  return EnhanceStep(
      isActive:isActive,
      icon: Image(
        color: ShipmentRegistrationCubit.get(context).currentStepInStepper == 0
            ? AppColors.mainColor
            : Colors.grey,
        image: const AssetImage(
          "assets/icons/boat.png",
        ),
        width: 25.w,
        height: 25.h,
      ),
      title:StepTitle(title:AppStrings.vessel.tr() ,isActive:isActive),
      content: Padding(
        padding: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0),
        child: Form(
          key: formKey,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DropdownButtonFormField<Vessel>(
                  key: GlobalKey(),
                  style: TextStyle(color: AppColors.mainColor, fontSize: 12.sp),
                  validator: (value) {
                    if (value == null) {
                      return AppStrings.required.tr();
                    }
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
                    suffixIconConstraints:
                        BoxConstraints(minHeight: 50.h, minWidth: 50.w),
                    prefixIconConstraints:
                        BoxConstraints(minHeight: 20.h, minWidth: 40.w),
                    prefixIcon: Image(
                      image: const AssetImage(
                        "assets/icons/boat.png",
                      ),
                      width: 15.w,
                      height: 15.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: AppColors.mainColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(color: AppColors.mainColor),
                    ),
                    labelText: AppStrings.vessel.tr(),
                    hintText:AppStrings.vessel.tr(),
                    labelStyle:
                        TextStyle(fontSize: 20.sp, color: AppColors.mainColor),
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                    errorStyle: TextStyle(fontSize: 12.sp),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  value: ShipmentRegistrationCubit.get(context).selectedVessel,
                  items: ShipmentRegistrationCubit.get(context)
                      .vessels
                      .map((value) {
                    return DropdownMenuItem<Vessel>(
                      value: value,
                      child: AutoSizeText(value.vesselName.toString()),
                    );
                  }).toList(),
                  onChanged: ShipmentRegistrationCubit.get(context)
                      .onChangeSelectedVessel,
                  iconSize: 20.r,
                ),
                ShipmentRegistrationCubit.get(context).selectedVessel != null
                    ? RemainQuantity(flag: false,)
                    : SizedBox(),
                SizedBox(
                  height: 25.h,
                ),
                GroupContainer(
                  truckLicenseValid: false,
                  title: AppStrings.bill.tr(),
                  text:  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,0),
                      child:CustomTextFormField(
                        controller: ShipmentRegistrationCubit.get(context)
                            .numberOfBillController,
                        label: AppStrings.enterNumberOfBill.tr(),
                        // errorText: _cubit.errorMessage ==
                        //     "password is wrong".tr()
                        //     ? _cubit.errorMessage
                        //     : null,
                        prefixIcon: Icons.newspaper,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return AppStrings.required.tr();
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  images:  Padding(
                    padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,5.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              ShipmentRegistrationCubit.get(context)
                                  .pickImages(1);
                            },
                            child: Container(
                              height: 35.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.mainColor),
                                borderRadius: BorderRadius.circular(5.sp),
                                color: AppColors.mainColor,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      AppStrings.upload.tr(),
                                      style:
                                      TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              showModelBottomSheet(
                                title:  AppStrings.bill.tr(),
                                  context: context,
                                  items: ShipmentRegistrationCubit.get(
                                      context)
                                      .attachmentsBillingFile);
                            },
                            child: Container(
                              height: 35.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.mainColor),
                                borderRadius: BorderRadius.circular(5.sp),
                                color: AppColors.mainColor,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      AppStrings.show.tr(),
                                      style:
                                      TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                GroupContainer(
                  truckLicenseValid: false,
                  title:  AppStrings.billAnalysis.tr(),
                  text:  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,0),
                      child: CustomTextFormField(
                        controller: ShipmentRegistrationCubit.get(context)
                            .numberOfBillAnalysisController,
                        label: AppStrings.enterNumberOfBillAnalysis.tr(),
                        // errorText: _cubit.errorMessage ==
                        //     "password is wrong".tr()
                        //     ? _cubit.errorMessage
                        //     : null,
                        prefixIcon: Icons.newspaper,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return AppStrings.required.tr();
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  images:  Padding(
                    padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,5.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              ShipmentRegistrationCubit.get(context)
                                  .pickImages(2);
                            },
                            child: Container(
                              height: 35.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.mainColor),
                                borderRadius: BorderRadius.circular(5.sp),
                                color: AppColors.mainColor,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      AppStrings.upload.tr(),
                                      style:
                                      TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              showModelBottomSheet(
                                  context: context,
                                  title:  AppStrings.billAnalysis.tr(),
                                  items: ShipmentRegistrationCubit.get(
                                      context)
                                      .attachmentsBillingAnalysisFile);
                            },
                            child: Container(
                              height: 35.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.mainColor),
                                borderRadius: BorderRadius.circular(5.sp),
                                color: AppColors.mainColor,
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      AppStrings.show.tr(),
                                      style:
                                      TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ));
}
