import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/custome_stepper.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/screen_title.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/text_field.dart';

import '../../../core/constants/app-colors.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/app_strings.dart';
import '../../../custom_icon.dart';
import '../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../logic/shipment_registeration_cubit/shipment_registeration_states.dart';
import '../../utils/dialogs/loading_dialog.dart';
import '../../utils/dialogs/message_dialog.dart';
import '../../widgets/main-button.dart';
import '../Home/home_screen.dart';

class AddShipmentScreen extends StatefulWidget {
  static const routeName = 'AddShipmentScreen';
  const AddShipmentScreen({Key? key}) : super(key: key);

  @override
  State<AddShipmentScreen> createState() => _AddShipmentScreenState();
}

class _AddShipmentScreenState extends State<AddShipmentScreen> {
  @override
  void initState()
  {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async{
      ShipmentRegistrationCubit.get(context).notesController.clear();
      ShipmentRegistrationCubit.get(context).notesPreCheckListController.clear();
      ShipmentRegistrationCubit.get(context).numberOfBillController.clear();
      ShipmentRegistrationCubit.get(context).numberOfBillAnalysisController.clear();
      ShipmentRegistrationCubit.get(context).driverNameController.clear();
      ShipmentRegistrationCubit.get(context).driverCardNumberController.clear();
      ShipmentRegistrationCubit.get(context).driverCardLicenseController.clear();
      ShipmentRegistrationCubit.get(context).driverNumberController.clear();
      ShipmentRegistrationCubit.get(context).truckNumberController.clear();
      ShipmentRegistrationCubit.get(context).truckLicenseController.clear();
      // ShipmentRegistrationCubit.get(context).entryDateTimeController.clear();
      // ShipmentRegistrationCubit.get(context).exitDateTimeController.clear();
      ShipmentRegistrationCubit.get(context).truckWeightController.clear();
      ShipmentRegistrationCubit.get(context).notesAddShipmentController.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShipmentRegistrationCubit, ShipmentRegistrationStates>(
      listener: (context, state) {
        if (state is RegisterShipmentLoading) {
          loadingAlertDialog(context);
        }
        if (state is RegisterShipmentSuccess) {
          Navigator.pop(context);
          //message from backend
          showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: true,
              onPressedOk: () {
                // Navigator.pushNamedAndRemoveUntil(
                //     context, HomeScreen.routeName, (route) => false);
                Navigator.of(AppConstants
                    .navigatorKey.currentContext!)
                    .pushNamedAndRemoveUntil(
                    HomeScreen.routeName,
                        (Route<dynamic> route) => false);
              });
        }
        if (state is RegisterShipmentFail) {
          Navigator.pop(context);
          showMessageDialog(
            height: 300.h,
            context: context,
            message: state.message,
            isSucceeded: false,
          );
        }
      },
      builder: (context, state) {
        var cubit = ShipmentRegistrationCubit.get(context);
        List<GlobalKey<FormState>> formKeys = [GlobalKey<FormState>(), GlobalKey<FormState>(),GlobalKey<FormState>(), GlobalKey<FormState>()];
        return Scaffold(
          //backgroundColor:Colors.white,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Stack(
                children: [
                  Container(
                    color: Colors.white,
                    height: 900.h,
                  ),
                  Container(
                    height: 100.h,
                    color: AppColors.mainColor,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 10.h),
                      child:  const ScreenTitle(color: Colors.white,),
                    ),
                  ),
                  Positioned(
                    left: 0,
                      right: 0,
                      top: 70.h,
                      child: Container(
                        height: 850.h,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(25.r),
                              topLeft: Radius.circular(25.r)),
                          color: Colors.white,
                        ),
                        child: CustomStepper(formKeys: formKeys,),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
