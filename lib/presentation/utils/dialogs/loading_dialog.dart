import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

loadingAlertDialog(BuildContext context, {bool isDismissible = false,bool check=false}) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          content: Row(
            children: [
              const CircularProgressIndicator(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: check==true?Text("Check Location".tr()):Text("Loading".tr()),
              ),
            ],
          ),
        ),
      );
    },
  );
}