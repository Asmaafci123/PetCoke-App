import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/core/constants/app-colors.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import 'details_of_selected_vessel.dart';
class RemainQuantity extends StatelessWidget {
  final bool? flag;
  const RemainQuantity({Key? key,this.flag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        flag==false?SizedBox(
          height: 5.h,
        ):SizedBox(
          height: 0.h,
        ),
        Row(
          children: [
            flag==true?SizedBox(
              width: 5.w,
            ):SizedBox(
              width: 0.w,
            ),
            Text(
              "${AppStrings.remainingQuantityIs.tr()} ${
                  ShipmentRegistrationCubit.get(context).selectedVessel!.remain.toString()}",
              style:const TextStyle(
                  color: Colors.green
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            flag==false?
            GestureDetector(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (_) {
                      return VesselDialog();
                    });
              },
              child: Text(
                AppStrings.details.tr(),
                style:const TextStyle(
                    color: AppColors.mainColor
                ),
              ),
            ):const SizedBox(),
          ],
        )
      ],
    );
  }
}
