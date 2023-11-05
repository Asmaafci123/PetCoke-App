import 'package:easy_localization/easy_localization.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/step_icon.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/step_title.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/text_field.dart';
import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../utils/dialogs/message_dialog.dart';
import '../../../widgets/main-button.dart';

EnhanceStep noteStep(BuildContext context,GlobalKey<FormState> formKey)
{
  bool isActive=ShipmentRegistrationCubit.get(context).currentStepInStepper==3;
  var cubit= ShipmentRegistrationCubit.get(context);
  return EnhanceStep(
    isActive:isActive,
    icon:StepIcon(icon:Icons.sticky_note_2,isActive: isActive),
    title:StepTitle(title:"Register".tr(),isActive:isActive),
    content: Padding(
      padding: EdgeInsets.fromLTRB(0.w, 5.h, 0.w, 0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextFormField(
              controller:
              ShipmentRegistrationCubit.get(context).notesAddShipmentController,
              maxLines: 5,
              label: AppStrings.enterNotes.tr(),
              // errorText: _cubit.errorMessage ==
              //     "password is wrong".tr()
              //     ? _cubit.errorMessage
              //     : null,
              prefixIcon: Icons.sticky_note_2,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return AppStrings.required.tr();
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 10.h),
              child: MainButton(
                  onPressed: () {
                    String message="";
                    if(cubit.driverNameController.text.isEmpty)
                      {
                        cubit.changeIconDriverColor(AppColors.redColor);
                        message += "- ";
                        message += "Driver's Information is required".tr();
                      }
                    if(cubit.selectedStoreFrom==null)
                    {
                      cubit.changeIconTruckColor(AppColors.redColor);
                      message += "\n- ";
                      message += "Truck's Information is required".tr();
                    }
                    if(formKey.currentState?.validate() ==
                        true) {
                      if(message.isNotEmpty)
                      {
                        showMessageDialog(
                            context: context,
                            message:  message ,
                            isSucceeded: false);
                      }
                      else
                      {
                        cubit.registerShipment();
                      }
                    }

                  },
                  title: "Register".tr()),
            ),
          ],
        ),
      ),
    ),
  );
}