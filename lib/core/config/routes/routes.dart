import 'package:flutter/material.dart';
import 'package:petcoke/presentation/screens/Home/home_screen.dart';
import 'package:petcoke/presentation/screens/Splash_screen/splash_screen.dart';
import '../../../presentation/screens/Add_Shipment/add_shipment.dart';
import '../../../presentation/screens/Attendance/Attendance_screen.dart';
import '../../../presentation/screens/Pre_check/pre_check_list_second_screen.dart';
import '../../../presentation/screens/Pre_check/pre_check_screen.dart';
import '../../../presentation/screens/log/log_screen.dart';
import '../../../presentation/screens/login/login_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return _materialRoute(const SplashScreen(), SplashScreen.routeName);
      case LoginScreen.routeName:
        return _materialRoute(const LoginScreen(), LoginScreen.routeName);
      case HomeScreen.routeName:
        return _materialRoute(const HomeScreen(), HomeScreen.routeName);
      case AttendanceScreen.routeName:
        return _materialRoute(const AttendanceScreen(), AttendanceScreen.routeName);
      case PreCheckScreen.routeName:
        return _materialRoute(const PreCheckScreen(), PreCheckScreen.routeName);
      case PreCheckListSecondScreen.routeName:
        return _materialRoute(const PreCheckListSecondScreen(), PreCheckListSecondScreen.routeName);
      case AddShipmentScreen.routeName:
        return _materialRoute(const AddShipmentScreen(), AddShipmentScreen.routeName);
      case LogScreen.routeName:
        return _materialRoute(const LogScreen(), LogScreen.routeName);
      default:
      // If there is no such named route in the switch statement, e.g. /third
        return _materialRoute(
            const Scaffold(
              body: SafeArea(
                child: Center(
                  child: Text('Route Error'),
                ),
              ),
            ),
            '404');
    }
  }

  static Route<dynamic> _materialRoute(Widget view, String routeName) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => view,
    );
  }
}