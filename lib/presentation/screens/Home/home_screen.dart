import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/custom_icon.dart';
import 'package:petcoke/logic/Attendance_cubit/attendance_states.dart';
import 'package:petcoke/logic/Home_cubit/home_cubit.dart';
import 'package:petcoke/presentation/screens/Home/widgets/custom_card.dart';
import 'package:petcoke/presentation/screens/Pre_check/pre_check_screen.dart';
import 'package:petcoke/presentation/screens/log/log_screen.dart';
import 'package:petcoke/presentation/screens/profile/profile_Screen.dart';
import 'package:petcoke/presentation/widgets/powered_by_cemex.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../logic/Home_cubit/home_states.dart';
import '../../../core/constants/app_assets.dart';
import '../../utils/dialogs/loading_dialog.dart';
import '../../utils/dialogs/message_dialog.dart';
import '../../utils/helpers/helpers.dart';
import '../Attendance/Attendance_screen.dart';
import '../login/login_screen.dart';
class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _showWarningPop()async
  {
    int hours=await getShiftTime();
    if(hours>0)
      {
        showMessageDialog(
          height: 200.h,
          context: context,
          message: "${hours.toString()} ${AppStrings.hours.tr()}",
          isSucceeded: false,
        );
      }
  }
  @override
  void initState()
  {
    WidgetsBinding.instance.addPostFrameCallback((_) async{
     _showWarningPop();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {
          if (state is LoadingSendCurrentLocationHomeState) {
            loadingAlertDialog(context);
          }
          if (state is LoadingGetCurrentLocationHomeState) {
            loadingAlertDialog(context,check: true);
          }
          if(state is SuccessGetCurrentLocationHomeState)
          {
            Navigator.pop(context);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AttendanceScreen()));
          }
          if (state is FailGetCurrentLocationHomeState) {
            Navigator.pop(context);
            showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: false,
            );
          }
          if (state is FailSendCurrentLocationHomeState) {
            Navigator.pop(context);
            showMessageDialog(
                height: 300.h,
                context: context,
                message: state.message,
                isSucceeded: false);
          }
          if (state is SuccessSendCurrentLocationHomeState) {
            Navigator.pop(context);
            showMessageDialog(
                height: 300.h,
                context: context,
                isSucceeded: true,
                message: state.message);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: Icon(
                              Icons.language,
                              size: 30.sp,
                              color:  AppColors.mainColor,
                            ),
                            items: [
                              ...MenuItems.firstItems.map(
                                    (item) => DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: MenuItems.buildItem(item),
                                ),
                              ),
                              const DropdownMenuItem<Divider>(
                                  enabled: false, child: Divider()),
                              ...MenuItems.secondItems.map(
                                    (item) => DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: MenuItems.buildItem(item),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              if (value == MenuItems.english) {
                                HomeCubit.get(context)
                                    .toggleLanguage('en');
                                context.locale = Locale('en');
                              } else {
                                HomeCubit.get(context)
                                    .toggleLanguage('ar');
                                context.locale = Locale('ar');
                              }
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 120,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                              ),
                              offset: const Offset(10, 2),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(
                                    MenuItems.firstItems.length, 48),
                                8,
                                ...List<double>.filled(
                                    MenuItems.secondItems.length, 48),
                              ],
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            //AppConstants.user.employeeName ?? '',
                            "PetCoke",
                            style: TextStyle(
                              color: AppColors.mainColor,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Joti',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.asset("assets/icons/boat.png",width:25.w,height: 25.w,),
                        SizedBox(
                          width: 75.w,
                        ),
                        Builder(builder: (context) {
                          return GestureDetector(
                            child:Icon(Icons.logout,color: AppColors.mainColor,size: 28.sp,),
                            onTap: () {
                              bool flag=getLastCheckInModel();
                              if(flag==false)
                                {
                                  Navigator.pop(context);
                                  logOut(context);
                                  Navigator.of(AppConstants
                                      .navigatorKey.currentContext!)
                                      .pushNamedAndRemoveUntil(
                                      LoginScreen.routeName,
                                          (Route<dynamic> route) => false);
                                }
                              else
                                {
                                  showMessageDialog(
                                      height: 300.h,
                                      context: context,
                                      isSucceeded: false,
                                      message: "please, check out before log out".tr());
                                }
                              //logOut(context);
                            },
                          );
                        }),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      AppStrings.welcomeBack.tr(),
                      style: TextStyle(
                        color:Colors.grey[600],
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AutoSizeText(
                      AppConstants.user.employeeName ?? '',
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Joti',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          icon: Icon(
                            Icons.co_present,
                            size: 50.sp,
                          ),
                          title: "Timing".tr(),
                          color: const Color(0xFFE35176),
                          onTap: () async{
                            await HomeCubit.get(context).getCurrentLocation();
                          },
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        CustomCard(
                          icon: Icon(
                            Icons.fire_truck_outlined,
                            size: 50.sp,
                          ),
                          title: "Shipment Registration".tr(),
                          color:const Color(0xFF007BFF),
                          onTap: () {
                            if(AppConstants.isCheckedIn)
                              {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PreCheckScreen()));
                              }
                            else
                              {
                                showMessageDialog(
                                    height: 300.h,
                                    context: context,
                                    isSucceeded: false,
                                    message: "please, check in before Shipment Registration".tr());
                              }
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          icon: Icon(
                            Icons.person,
                            size: 50.r,
                          ),
                          title: "Profile".tr(),
                          color: const Color(0xFFEA9152),
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                          },
                        ),
                        // SizedBox(
                        //   width: 12.w,
                        // ),
                        CustomCard(
                          icon: Icon(
                            Icons.location_on,
                            size: 50.r,
                          ),
                          title: "Current Location".tr(),
                          color: const Color(0xFFB851EC),
                          onTap: () {
                            if(AppConstants.isCheckedIn) {
                              HomeCubit.get(context).sendLocation();
                            }
                            else
                            {
                              showMessageDialog(
                                  height: 300.h,
                                  context: context,
                                  isSucceeded: false,
                                  message: "please, check in before Shipment Registration".tr());
                            }
                           // HomeCubit.get(context).getCurrentLocation();
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCard(
                          icon: Icon(
                            Icons.calendar_month,
                            size: 50.r,
                          ),
                          title:"Month Log".tr(),
                          color: const Color(0xFF61c677),
                          onTap: () {
                            Navigator.pushNamed(context,LogScreen.routeName);
                          },
                        ),
                        // SizedBox(
                        //   width: 12.w,
                        // ),
                        Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PoweredByCemex(),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MenuItem {
  const MenuItem({
    required this.text,
  });

  final String text;
}

class LanguageItem {
  const LanguageItem({
    required this.text,
  });

  final String text;
}

abstract class MenuItems {
  static const List<MenuItem> firstItems = [english];
  static const List<MenuItem> secondItems = [arabic];

  static const english = MenuItem(
    text: 'English',
  );
  static const arabic = MenuItem(
    text: 'Arabic',
  );

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
              color: AppColors.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
