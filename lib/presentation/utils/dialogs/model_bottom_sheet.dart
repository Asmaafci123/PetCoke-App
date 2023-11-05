
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

import '../../../core/constants/app-colors.dart';

showModelBottomSheet({
  required BuildContext context,
  required String title,
  List<File>?items,
}) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.r), topLeft: Radius.circular(20.r)),
    ),
    builder: (context) => Padding(
        padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 5.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:Icon(
                    Icons.close,
                    color: AppColors.mainColor,
                  )),
                  Spacer(),
                  Text(title,style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600
                  ),),
                  Spacer(),
                  SizedBox(
                    width: 50.w,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 600.h,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 3 / 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: items?.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.file(
                            items![index],
                            fit: BoxFit.cover,
                          ));
                    }),
              ),
            ],
          ),
        )),
  );
}
