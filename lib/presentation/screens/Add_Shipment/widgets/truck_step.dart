import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/remain_quantity.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/step_icon.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/step_title.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/text_field.dart';
import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../data/models/store/store.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../utils/dialogs/model_bottom_sheet.dart';
import '../../../widgets/date_time_form_field.dart';
import 'group_container.dart';

EnhanceStep truckStep(BuildContext context,GlobalKey<FormState> formKey)
{
  var cubit = ShipmentRegistrationCubit.get(context);
  bool isActive=ShipmentRegistrationCubit.get(context).currentStepInStepper==2;
  return EnhanceStep(
      isActive:isActive,
      icon: StepIcon(icon:Icons.fire_truck_sharp,isActive: isActive,iconColor:cubit.truckIconColor ,),
      title:StepTitle(title:AppStrings.truck.tr(),isActive:isActive,titleColor: cubit.truckIconColor,),
      content:Padding(
        padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<Store>(
                      key: GlobalKey(),
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 12.sp),
                      validator: (value) {
                        if (value == null) {
                          return AppStrings.required.tr();
                        }
                        if (value ==
                            ShipmentRegistrationCubit.get(context).selectedStoreTo|| value.name=="أسيوط") {
                          return "ادخل المخزن الصحيح";
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
                        EdgeInsets.symmetric(
                            vertical: 10.h,
                            horizontal: 8.w),
                        suffixIconConstraints:
                        BoxConstraints(
                            minHeight: 50.h,
                            minWidth: 50.w),
                        prefixIconConstraints:
                        BoxConstraints(
                            minHeight: 20.h,
                            minWidth: 40.w),
                        prefixIcon: Image(
                          image: const AssetImage(
                            "assets/icons/boat.png",
                          ),
                          width: 15.w,
                          height: 15.h,
                        ),
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
                        labelText: AppStrings.from.tr(),
                        hintText:
                        AppStrings.fromPort.tr(),
                        labelStyle: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.mainColor),
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp),
                        errorStyle:
                        TextStyle(fontSize: 12.sp),
                        floatingLabelBehavior:
                        FloatingLabelBehavior.always,
                      ),
                      value: ShipmentRegistrationCubit.get(context).selectedStoreFrom,
                      items:ShipmentRegistrationCubit.get(context).stores.map((value) {
                        return DropdownMenuItem<Store>(
                          value: value,
                          child: AutoSizeText(
                              value.name.toString()),
                        );
                      }).toList(),
                      onChanged:
                      ShipmentRegistrationCubit.get(context).onChangeSelectedStoreFrom,
                      iconSize: 20.r,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                      child: DropdownButtonFormField<Store>(
                        key: GlobalKey(),
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 12.sp),
                        validator: (value) {
                          if (value == null) {
                            return AppStrings.required.tr();
                          }
                          if (value ==
                              ShipmentRegistrationCubit.get(context).selectedStoreFrom) {
                            return "ادخل المخزن الصحيح";
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
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 8.w),
                          suffixIconConstraints: BoxConstraints(
                              minHeight: 50.h, minWidth: 50.w),
                          prefixIconConstraints: BoxConstraints(
                              minHeight: 20.h, minWidth: 40.w),
                          prefixIcon:Icon(
                            Icons.factory,
                            color: AppColors.mainColor,
                            size: 20.sp,
                          ),
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
                          labelText: AppStrings.to.tr(),
                          hintText: AppStrings.toWH.tr(),
                          labelStyle: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.mainColor),
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp),
                          errorStyle:
                          TextStyle(fontSize: 12.sp),
                          floatingLabelBehavior:
                          FloatingLabelBehavior.always,
                        ),
                        value: ShipmentRegistrationCubit.get(context).selectedStoreTo,
                        items: ShipmentRegistrationCubit.get(context).stores.map((value) {
                          return DropdownMenuItem<Store>(
                            value: value,
                            child: AutoSizeText(
                                value.name.toString()),
                          );
                        }).toList(),
                        onChanged:
                        ShipmentRegistrationCubit.get(context).onChangeSelectedStoreTo,
                        iconSize: 20.r,
                      )),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormField(
                controller: ShipmentRegistrationCubit.get(context).truckNumberController,
                label: AppStrings.enterTruckNumber.tr(),
                // errorText: _cubit.errorMessage ==
                //     "password is wrong".tr()
                //     ? _cubit.errorMessage
                //     : null,

                prefixIcon: Icons.fire_truck_sharp,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return AppStrings.required.tr();
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              GroupContainer(
                truckLicenseValid: true,
                title: AppStrings.truckLicense.tr(),
                text:  Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,0),
                    child:CustomTextFormField(
                      controller:
                      ShipmentRegistrationCubit.get(context).truckLicenseController,
                      label:
                      AppStrings.enterTruckLicense.tr(),
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
                                .pickImages(5);
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
                                title: AppStrings.truckLicense.tr(),
                                context: context,
                                items: ShipmentRegistrationCubit.get(
                                    context)
                                    .attachmentsTruckLicenseFile);
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
              Row(
                children: [
                  Expanded(
                      child: CustomDateTimeFormField(
                        label: "Entry".tr(),
                        controller:
                        ShipmentRegistrationCubit.get(context).entryDateTimeController,
                      //  onChange:ShipmentRegistrationCubit.get(context).changeEntryDate ,
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                      child: CustomDateTimeFormField(
                        label: "Exit".tr(),
                        controller:
                        ShipmentRegistrationCubit.get(context).exitDateTimeController,
                        //  onChange:ShipmentRegistrationCubit.get(context).changeExitDate
                      ))
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              GroupContainer(
                truckLicenseValid: false,
                title: AppStrings.truckWeight.tr(),
                remain:  RemainQuantity(flag: true,),
                text:  Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.w, 0, 5.w,0),
                    child:CustomTextFormField(
                      controller:
                      ShipmentRegistrationCubit.get(context).truckWeightController,
                      label:
                      AppStrings.enterTruckWeight.tr(),
                      // errorText: _cubit.errorMessage ==
                      //     "password is wrong".tr()
                      //     ? _cubit.errorMessage
                      //     : null,
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                      ],
                      prefixIcon: Icons.newspaper,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return AppStrings.required.tr();
                        }
                        if (double.parse(value) >
                            ShipmentRegistrationCubit.get(context).selectedVessel!.remain) {
                          return AppStrings.quantityNotAvailable.tr();
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
                                .pickImages(6);
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
                                title: AppStrings.truckWeight.tr(),
                                context: context,
                                items: ShipmentRegistrationCubit.get(
                                    context)
                                    .attachmentsTruckWeightFile );
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
            ],
          ),
        ),
      ) );
}