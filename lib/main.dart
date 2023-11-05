import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:petcoke/core/constants/keys.dart';
import 'package:petcoke/data/models/credential_model/credential_model.dart';
import 'package:petcoke/data/models/send_current_location_model/send_current_location_model.dart';
import 'package:petcoke/presentation/screens/Home/home_screen.dart';
import 'package:petcoke/presentation/screens/Splash_screen/splash_screen.dart';
import 'package:petcoke/presentation/screens/login/login_screen.dart';
import 'package:petcoke/presentation/utils/helpers/helpers.dart';
import 'core/bloc_observer.dart';
import 'core/config/routes/routes.dart';
import 'core/constants/app-colors.dart';
import 'core/constants/app_assets.dart';
import 'core/constants/app_constants.dart';
import 'data/models/user/user.dart';
import 'injection_container.dart';
import 'logic/Attendance_cubit/attendance_cubit.dart';
import 'logic/Home_cubit/home_cubit.dart';
import 'logic/login_cubit/login_cubit.dart';
import 'logic/login_cubit/login_states.dart';
import 'injection_container.dart' as di;
import 'package:hive_flutter/hive_flutter.dart';
import 'logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.init();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('user');
  await Hive.openBox('route');
  Hive.registerAdapter(SendLocationModelAdapter());
  await Hive.openBox<SendLocationModel>('checkInModel');
  await Hive.openBox<DateTime>(popTimesKey);
  Hive.registerAdapter(CredentialDetailsAdapter());
  await Hive.openBox<CredentialDetails>(credentialDetailsKey);
  await Hive.openBox(languageCodeKey);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor:AppColors.mainColor,
    statusBarBrightness: Brightness.dark,
  ));

  Bloc.observer = MyBlocObserver();
  var key=GlobalKey();
  runApp(
      EasyLocalization(
        key:key ,
      path: AppAssets.appTranslations,
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      fallbackLocale: const Locale('ar'),
      startLocale:Locale(AppConstants.languageCode!) ,
      child: const PetCokeApp()),);
}

class PetCokeApp extends StatelessWidget {
  const PetCokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      // splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeCubit>(create: (context) => sl<HomeCubit>()),
            BlocProvider<AttendanceCubit>(create: (context) => sl<AttendanceCubit>()),
            BlocProvider<ShipmentRegistrationCubit>(create: (context) => sl<ShipmentRegistrationCubit>()..initDate()),
          ],
          child: MaterialApp(
            navigatorKey: AppConstants.navigatorKey,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.backgroundColor,
              primarySwatch: AppColors.materialMainColor,
              iconTheme: IconThemeData(color: AppColors.mainColor),
              fontFamily: 'Cairo',
              // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              // useMaterial3: true,
            ),
            onGenerateRoute: AppRoutes.onGenerateRoutes,
             initialRoute:SplashScreen.routeName,
          ),
        );
      },
    );
  }
}

