import 'package:easy_localization/easy_localization.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/ship_step.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/truck_step.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../utils/dialogs/message_dialog.dart';
import '../../../utils/helpers/helpers.dart';
import 'driver_step.dart';
import 'note_step.dart';

class CustomStepper extends StatelessWidget {
  final List<GlobalKey<FormState>> formKeys;
  const CustomStepper({Key? key,required this.formKeys}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = ShipmentRegistrationCubit.get(context);
    return EnhanceStepper(
     physics:const NeverScrollableScrollPhysics(),
      currentStep: ShipmentRegistrationCubit.get(context).currentStepInStepper,
      stepIconSize: 30.sp,
      type: StepperType.horizontal,
      horizontalTitlePosition: HorizontalTitlePosition.bottom,
      horizontalLinePosition: HorizontalLinePosition.top,
      onStepTapped: (int step) {
        validateOnTapStepper(context,formKeys,step);
      },
      controlsBuilder: (context, ControlsDetails controls) {
        return const SizedBox.shrink();
      },
      steps: [
        shipStep(context,formKeys[0]),
        driverStep(context,formKeys[1]),
        truckStep(context,formKeys[2]),
        noteStep(context,formKeys[3]),
      ],
    );
  }
}
