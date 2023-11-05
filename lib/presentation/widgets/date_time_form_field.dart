import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app-colors.dart';
import '../../core/constants/app_strings.dart';
import '../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';

class CustomDateTimeFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  //final Function(DateTime?)onChange;
  const CustomDateTimeFormField({Key? key,required this.label,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print( ShipmentRegistrationCubit.get(context).entryDateTimeController.text);
    print( ShipmentRegistrationCubit.get(context).exitDateTimeController.text);
    return DateTimeField(
      // resetIcon: Icon(
      //   Icons.close,
      //   size: 25.r,
      // ),
      resetIcon: null,
      style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w600),
      controller:controller,
      validator: (value)
        {
          print(value);
          if (value==null) {
            return AppStrings.required.tr();
          }
          if(label=="Exit".tr())
           {
             if(value.isBefore(DateTime.parse(ShipmentRegistrationCubit.get(context).entryDateTimeController.text)))
             {
               return "ادخل وقت صحيح";
             }
           }
          return null;
        },
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 12.h
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 25.w,
          minHeight: 25.w,
        ),
        prefixIcon: Icon(
          Icons.calendar_month,
          size: 20.r,
          color: AppColors.mainColor,
        ),
        suffixIcon: null,
        border:OutlineInputBorder(
          borderSide:BorderSide(
            color: AppColors.mainColor,
            width: 5.w,
          ),
          borderRadius: BorderRadius.circular(10.r)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(
              color: AppColors.mainColor,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(10.r)
        ),
        errorBorder:  OutlineInputBorder(
            borderSide:BorderSide(
              color: AppColors.redColor,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(10.r)
        ),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 14.sp,
          color: AppColors.mainColor,
        ),
        hintText: "YYYY/MM/DD  HH:MM",

        //hintText:  DateTime.now().toString(),
        // helperText:
        //     'You are selected from ${_cubit.startDate.text} to ${_cubit.endDate.text}',
        hintStyle: TextStyle(color: Colors.black, fontSize: 12.sp),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      format: DateFormat("yyyy-MM-dd hh:mm","en_US"),
      onShowPicker: (context, currentValue) async {
        final date = await showDatePicker(
            context: context,
            firstDate: DateTime(2022),
            initialDate: DateTime.now(),
            lastDate: DateTime(2100),
        );
        if (date != null) {
          final time = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
          );
          return DateTimeField.combine(date, time);
        } else {
          return currentValue;
        }
      },
       //onChanged: _cubit.changeStartDate,
      onChanged: (DateTime? dateTime){
        //label=="Exit".tr()?
        //ShipmentRegistrationCubit.get(context).exitDateTimeController.text=dateTime.toString():
        //ShipmentRegistrationCubit.get(context).entryDateTimeController.text=dateTime.toString();
        print( ShipmentRegistrationCubit.get(context).entryDateTimeController.text);
        print( ShipmentRegistrationCubit.get(context).exitDateTimeController.text);
      },
     //   onChanged: onChange
     initialValue:DateTime.parse(controller.text)
    );
  }
}
