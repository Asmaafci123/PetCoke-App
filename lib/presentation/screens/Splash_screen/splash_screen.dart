import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/presentation/utils/helpers/helpers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform, exit;
import '../../../core/constants/app_strings.dart';
import '../../../logic/Home_cubit/home_cubit.dart';
import '../../../logic/Home_cubit/home_states.dart';
import '../../utils/dialogs/loading_dialog.dart';
import '../../utils/dialogs/message_dialog.dart';
import '../../widgets/powered_by_cemex.dart';
import '../Home/home_screen.dart';
import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = 'SplashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String? user;
  int? langId;
  String? version;
  var myUrl = '';
  _startDelay() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      version = packageInfo.version;
    });
   //timer=Timer(const Duration(seconds: 2), _checkVersion);
   //  Navigator.pushNamed(
   //      context,LoginScreen.routeName,
   //  );
   _checkVersion();
  }
  _checkVersion() async {
    print(version);
    print(AppConstants.lastAndroidMobileVersion );
    myUrl =
        "https://play.google.com/store/apps/details?id=com.petcoke.cemex&hl=en-US&ah=Mx1WwyKM9yWUpKyHGV3PjCJqey8";
    version!.compareTo(AppConstants.lastAndroidMobileVersion ?? '1.0.0') == -1
        ? showAndroidUpdateDialog()
        : _goNext();
  }
  _goNext() {
    String lastRout = getLastRoute();
    if (lastRout == LoginScreen.routeName) {
      if (!mounted) return;
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (Route<dynamic> route) => false);
    } else {
        Navigator.pushNamedAndRemoveUntil(
            context, HomeScreen.routeName, (Route<dynamic> route) => false);
    }
  }

  Future<dynamic> showAndroidUpdateDialog() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text(AppStrings.update.tr()),
            content: Text(AppStrings.update.tr()),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  final Uri url = Uri.parse(myUrl);
                  logOut(context);
                  _launchUrl(url);
                },
                child: Text(AppStrings.update.tr()),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      HomeCubit.get(context).getLastMobileVersion();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
        // if(state is LoadingGetLastMobileVersionHomeState)
        //   {
        //     loadingAlertDialog(context);
        //   }
        if (state is FailGetLastMobileVersionHomeState) {
          Navigator.pop(context);
          showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: false,
              onPressedOk: () {
                exit(0); //close application
              });
        }
        if (state is SuccessGetLastMobileVersionHomeState) {
        //  Navigator.pop(context);
         _startDelay();
         //  Navigator.push(context,
         //      MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                // Center(
                //   child: SizedBox(
                //       width: double.infinity,
                //       child: Text("asmaa")),
                // ),
                Spacer(),
                Center(
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 209.h,
                      width: 275.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                // Text(version??'unknown',style: TextStyle(fontSize: 12.sp),),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: LinearProgressIndicator(),
                  ),
                ),
                Spacer(),
                const PoweredByCemex(),
                SizedBox(
                  height: 40.h,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
