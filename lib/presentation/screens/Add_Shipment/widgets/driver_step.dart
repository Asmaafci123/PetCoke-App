import 'package:easy_localization/easy_localization.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/step_icon.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/step_title.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/text_field.dart';
import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../utils/dialogs/model_bottom_sheet.dart';
import 'group_container.dart';

EnhanceStep driverStep(BuildContext context,GlobalKey<FormState> formKey)
{
  var cubit = ShipmentRegistrationCubit.get(context);
  bool isActive=ShipmentRegistrationCubit.get(context).currentStepInStepper==1;
  return  EnhanceStep(
      isActive:isActive,
      icon: StepIcon(icon:Icons.person, isActive:isActive,iconColor:cubit.driverIconColor ,),
      title:StepTitle(title:AppStrings.driver.tr(),isActive:isActive,titleColor: cubit.driverIconColor ,),
      content:Padding(
        padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFormField(
                controller: ShipmentRegistrationCubit.get(context).driverNameController,
                label: AppStrings.enterDriverName.tr(),
                // errorText: _cubit.errorMessage ==
                //     "password is wrong".tr()
                //     ? _cubit.errorMessage
                //     : null,
                prefixIcon: Icons.person,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return AppStrings.required.tr();
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              GroupContainer(
                truckLicenseValid: false,
                title: AppStrings.driverCard.tr(),
                text:  Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,0),
                    child:  CustomTextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp("[0-9]")),
                      ],
                      controller:
                      ShipmentRegistrationCubit.get(context).driverCardNumberController,
                      label: AppStrings
                          .enterDriverCardNumber
                          .tr(),
                      keyboardType: TextInputType.number,
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
                            // cubit.pickImages(1);
                            ShipmentRegistrationCubit.get(context)
                                .pickImages(3);
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
                                title: AppStrings.driverCard.tr(),
                                items: ShipmentRegistrationCubit.get(
                                    context)
                                    .attachmentsDriverCardNumberFile);
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
                height: 15.h,
              ),
              GroupContainer(
                truckLicenseValid: false,
                title: AppStrings.drivingLicense.tr(),
                text:  Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,0),
                    child: CustomTextFormField(
                      controller:
                      ShipmentRegistrationCubit.get(context).driverCardLicenseController,
                      label:AppStrings.drivingLicense.tr(),
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
                            // cubit.pickImages(1);
                            ShipmentRegistrationCubit.get(context)
                                .pickImages(4);
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
                                title: AppStrings.drivingLicense.tr(),
                                context: context,
                                items: ShipmentRegistrationCubit.get(
                                    context)
                                    .attachmentsDriverCardLicenseFile);
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
                height: 15.h,
              ),
              CustomTextFormField(
                controller: ShipmentRegistrationCubit.get(context).driverNumberController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp("[0-9]")),
                ],
                label: AppStrings.enterDriverNumber.tr(),
                // errorText: _cubit.errorMessage ==
                //     "password is wrong".tr()
                //     ? _cubit.errorMessage
                //     : null,
                keyboardType: TextInputType.number,
                prefixIcon: Icons.phone,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return AppStrings.required.tr();
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ) );
}