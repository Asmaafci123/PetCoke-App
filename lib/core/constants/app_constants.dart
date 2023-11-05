import 'package:flutter/material.dart';

import '../../data/models/credential_model/credential_model.dart';
import '../../data/models/send_current_location_model/send_current_location_model.dart';
import '../../data/models/user/user.dart';




class AppConstants {
  AppConstants._();
  static var scaffoldKey = GlobalKey<ScaffoldState>();
  static var navigatorKey = GlobalKey<NavigatorState>();

  static String languageCode='ar';
  static String lang='_';
  static String lat='_';
  static String city='_';
  static String street='_';
  static late User user;
  static bool  isCheckedIn=false;
  static bool  isCheckedOut=true;
  static late  SendLocationModel? currentCheckModel;
  static late  SendLocationModel? checkInModel;
  static  SendLocationModel? checkOutModel;
  static late  SendLocationModel? lastCheckIn;
  static Duration durationLastCheckIn=Duration(hours: 0);
  static String lastAndroidMobileVersion='';
  static String lastIOSMobileVersion='';
  static DateTime popTimes=DateTime(2000);
  static CredentialDetails? credentialDetails=CredentialDetails(cemexId: null,password: null);
//   static late Trip trip;
//   static late TripDestinationArrivedModel dar;
//   //static late bool mobileData;
//
// // text styles
//   static final titleTextStyle = TextStyle(
//     color: AppColors.whiteGreyColor,
//     fontSize: 16.sp,
//     fontFamily: "Cairo",
//     fontWeight: FontWeight.w700,
//   );
//
//   static final backgroundService = FlutterBackgroundService();
//   static startBackgroundService() async {
//     if(!await backgroundService.isRunning()){
//       await backgroundService.startService();
//     }
//   }
//   static sendDataToBackgroudnService(double distance) async {
//     backgroundService.invoke('startTrip',{
//       'trip':AppConstants.trip.toJson(),
//       'user':AppConstants.user.toJson(),
//       'distance':distance,
//     });
//   }
//
//   static stopService()async
//   {
//     var isRunning = await backgroundService.isRunning();
//     if (isRunning == true) {
//       backgroundService.invoke("stopService");
//     }
//   }
}