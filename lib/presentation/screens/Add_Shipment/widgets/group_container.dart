import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/widgets/text_field.dart';

import '../../../../core/constants/app-colors.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../utils/dialogs/model_bottom_sheet.dart';
class GroupContainer extends StatelessWidget {
  final String title;
  final Widget text;
  final Widget images;
  final Widget? remain;
  final bool truckLicenseValid;
  const GroupContainer({Key? key,required this.text,required this.images,required this.title,this.remain,required this.truckLicenseValid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: double.infinity,
          // margin: EdgeInsets.all(20.0),
          height:remain!=null?210.h: truckLicenseValid==true?200.h:170.h,
          decoration: BoxDecoration(
            border: Border.all(
                color: AppColors.mainColor, width: 0.5.w),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                // Negative padding
                transform:
                AppConstants.languageCode=="en"?
                Matrix4.translationValues(30.0.w, -14.0.h, 0.0) :
                Matrix4.translationValues(-25.0.w, -14.0.h, 0.0),
                padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
              ),
              remain??const SizedBox(),
              remain!=null?SizedBox(height: 10.h,):const SizedBox(),
              text,
              truckLicenseValid==true?CheckboxListTile(
                title: Text("Truck License has expired".tr()),
                contentPadding:const EdgeInsets.fromLTRB(0, 0, 0, 0),
                hoverColor: AppColors.mainColor,
                value:ShipmentRegistrationCubit.get(context).truckLicenseValid,
                onChanged: (newValue) {
                  ShipmentRegistrationCubit.get(context).changeTruckLicenseValid(newValue??false);
                },
                controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
              ):SizedBox(),
              images,
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ],
    );
  }
}
