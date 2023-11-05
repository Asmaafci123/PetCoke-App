import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:petcoke/data/datasources/local_data_source.dart';
import 'package:petcoke/data/models/mobile_version_model/mobile_version_model.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/constants/keys.dart';
import '../../../data/datasources/boxes.dart';
import '../../../data/models/credential_model/credential_model.dart';
import '../../../data/repositories/petcoke_repository.dart';
import '../../../injection_container.dart';
import '../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../screens/Home/home_screen.dart';
import '../../screens/login/login_screen.dart';
import '../dialogs/message_dialog.dart';

void logOut(BuildContext context) {
  //clear global cubits state
  // HomeCubit.get(context).clearData();

  sl<PetCokeRepository>().clearUser().fold((l) => print(l.message), (r) {
    showMessageDialog(
        context: context,
        isSucceeded: true,
        message: "تم تسجيل الخروج بنجاح!",
        onPressedOk: () {
          //Navigate to login screen
          Navigator.of(AppConstants.navigatorKey.currentContext!)
              .pushNamedAndRemoveUntil(
                  LoginScreen.routeName, (Route<dynamic> route) => false);
        });
  });

  //clear FCM token
  //PushNotificationService.deleteDeviceToken();

  //clear cached data

  // SharedPreferences.getInstance().then((value) async {
  //   await value.reload();
  //   return value.clear();
  // });
}

// Future<void> saveLastRoute(String route) async {
//   var box = Boxes.getRouteBox();
//   box.put('LAST_ROUTE', route);
// }

String getLastRoute() {
  var userBox = Boxes.getUser();
  var user = userBox.get('user');
  var credentialDetailsBox=Boxes.getCredentialDetails();
  var credentialDetails=credentialDetailsBox.get(credentialDetailsKey);
  var languageCodeBox=Boxes.getLanguageCode();
  var languageCode=languageCodeBox.get(languageCodeKey);
  AppConstants.languageCode=languageCode??"";
  if (user == null) {
    AppConstants.credentialDetails=credentialDetails;
    return LoginScreen.routeName;
  }else {
    AppConstants.user = user;
    AppConstants.credentialDetails=credentialDetails!;
    return HomeScreen.routeName;
  }
}

bool getLastCheckInModel()
{
  var checkInBox = Boxes.getCheckInModel();
  var checkIn = checkInBox.get('checkInModel');
  if(checkIn==null)
    {
      return false;
    }
  else
    {
      return true;
    }
}

Future<int> getShiftTime() async {
  var checkInBox = Boxes.getCheckInModel();
  var checkIn = checkInBox.get('checkInModel');
  var timesBox=Boxes.getPopTimes();
  var times=timesBox.get(popTimesKey);
  AppConstants.popTimes=times??DateTime(2000);
  if (checkIn == null) {
    AppConstants.durationLastCheckIn =
    const Duration(hours: 0, minutes: 0, seconds: 0);
    return 0;
  } else {
    AppConstants.isCheckedIn=true;
    AppConstants.lastCheckIn = checkIn;
    if(AppConstants.popTimes==DateTime(2000))
      {
        AppConstants.durationLastCheckIn =
            DateTime.now().difference(AppConstants.lastCheckIn!.date);
      }
    else
      {
        AppConstants.durationLastCheckIn =
            DateTime.now().difference(AppConstants.popTimes);
      }
    String x=AppConstants.durationLastCheckIn.toString();
    int h=0;
    if(x[1]!=":")
    {
      h=int.parse(x[0]+x[1]);
    }
    else
    {
      h=int.parse(x[0]);
    }
    if(h>=8 && AppConstants.popTimes==DateTime(2000))
      {
        await sl<LocalDataSource>().cachePopTimes(DateTime.now());
        return h;
      }
    else if(h>=1 && AppConstants.popTimes!=DateTime(2000))
     {
       await sl<LocalDataSource>().cachePopTimes(DateTime.now());
       return h+8;
     }
    else
      {
        return 0;
      }
  }
}

validateOnTapStepper(
    BuildContext context, List<GlobalKey<FormState>> formKeys, int step) {
  var cubit = ShipmentRegistrationCubit.get(context);
  int currentStep = cubit.currentStepInStepper;
  if (currentStep == 0) {
    if (formKeys[currentStep].currentState!.validate()) {
      if (cubit.attachmentsBilling.isNotEmpty &&
          cubit.attachmentsBillingAnalysis.isNotEmpty) {
        cubit.setCurrentStepInStepper(step);
      } else {
        String message = AppStrings.noAttachmentsAreSpecifiedForEach.tr();
        if (cubit.attachmentsBilling.isEmpty) {
          message += "\n - ";
          message += AppStrings.enterNumberOfBill.tr();
        }
        if (ShipmentRegistrationCubit.get(context)
            .attachmentsBillingAnalysis
            .isEmpty) {
          message += "\n - ";
          message += AppStrings.enterNumberOfBillAnalysis.tr();
        }
        // print(message);
        showMessageDialog(
            context: context, message: message, isSucceeded: false);
      }
    }
  } else if (currentStep == 1) {
    if (formKeys[currentStep].currentState!.validate()) {
      if (cubit.attachmentsDriverCardNumber.isNotEmpty &&
          cubit.attachmentsDriverCardLicense.isNotEmpty) {
        cubit.changeIconDriverColor(Colors.grey);
        cubit.setCurrentStepInStepper(step);
      } else {
        String message = AppStrings.noAttachmentsAreSpecifiedForEach.tr();
        if (cubit.attachmentsDriverCardNumberFile.isEmpty) {
          message += "\n - ";
          message += AppStrings.enterDriverCardNumber.tr();
        }
        if (cubit.attachmentsDriverCardLicenseFile.isEmpty) {
          message += "\n - ";
          message += AppStrings.enterDriverCardLicense.tr();
        }
        showMessageDialog(
            context: context, message: message, isSucceeded: false);
      }
    }
  } else if (currentStep == 2) {
    if (formKeys[currentStep].currentState!.validate()) {
      if (cubit.attachmentsTruckLicense.isNotEmpty &&
          cubit.attachmentsTruckWeight.isNotEmpty) {
        cubit.changeIconTruckColor(Colors.grey);
        cubit.setCurrentStepInStepper(step);
      } else {
        String message = AppStrings.noAttachmentsAreSpecifiedForEach.tr();
        if (cubit.attachmentsTruckLicenseFile.isEmpty) {
          message += "\n - ";
          message += AppStrings.enterTruckLicense.tr();
        }
        if (cubit.attachmentsTruckWeightFile.isEmpty) {
          message += "\n - ";
          message += AppStrings.enterTruckWeight.tr();
        }
        // print(message);
        showMessageDialog(
            context: context, message: message, isSucceeded: false);
      }
    }
  } else {
    if (formKeys[currentStep].currentState!.validate()) {
      cubit.setCurrentStepInStepper(step);
    }
  }
}

