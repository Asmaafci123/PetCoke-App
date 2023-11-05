import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/data/models/log-attendance-model/log-attendance-model.dart';
import 'package:petcoke/presentation/screens/log/widgets/shift-info.dart';
import '../../../core/constants/app-colors.dart';
import '../../../custom_icon.dart';
class LogScreen extends StatelessWidget {
  static const routeName = 'LogScreen';
  const LogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateFormat format =  DateFormat("MMMM DD YYYY");
    List<LogAttendanceModel> models=[
      LogAttendanceModel(day:"10 OCT 2023", checkIn: DateTime(2023,10,10,10,30), checkOut: DateTime(2023,10,10,18,30), hours:8),
      LogAttendanceModel(day:"11 OCT 2023", checkIn: DateTime(2023,10,11,10,30), checkOut: DateTime(2023,10,11,18,30), hours:8),
      LogAttendanceModel(day:"12 OCT 2023", checkIn: DateTime(2023,10,12,10,30), checkOut: DateTime(2023,10,12,18,30), hours:8),
      LogAttendanceModel(day:"13 OCT 2023", checkIn: DateTime(2023,10,13,10,30), checkOut: DateTime(2023,10,13,18,30), hours:8),
      LogAttendanceModel(day:"14 OCT 2023", checkIn: DateTime(2023,10,14,10,30), checkOut:DateTime(2023,10,14,18,30), hours:8),
      LogAttendanceModel(day:"15 OCT 2023", checkIn: DateTime(2023,10,15,10,30), checkOut:DateTime(2023,10,15,18,30), hours:8),
      LogAttendanceModel(day:"16 OCT 2023", checkIn: DateTime(2023,10,16,10,30), checkOut:DateTime(2023,10,16,18,30), hours:8),
    ];
    return Scaffold(
      //appBar:MyAppBar(title:"Month Log".tr(),)
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:EdgeInsets.fromLTRB(10.w,0, 10.w,0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(CustomIcons.home__2_),
                  ),
                ),
                Text(
                  "Month Log".tr(),
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 25.sp,
                  ),
                ),
                IconButton(
                    icon:Icon(CustomIcons.search__1_,size: 22.sp,),
                    iconSize: 35.sp,
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
            Expanded(
              child: Padding(
                padding:EdgeInsets.fromLTRB(10.w,40.h, 10.w,0),
                child: ListView.separated(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
                  itemBuilder: (context,index)=>ShiftInfo(model: models[index],),itemCount: models.length,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
