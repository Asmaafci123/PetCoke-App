import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          height: 250.w,
          width: 250.w,
          child: Image.asset(
            AppAssets.appLogo,
            fit: BoxFit.contain,
          )),
    );
  }
}
