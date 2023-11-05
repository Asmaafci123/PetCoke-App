import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/data/models/pre_check_answer/pre_check_answer.dart';
import '../../../../core/constants/app-colors.dart';
import '../../../../data/models/preCheck_question_model/pre_check_question.dart';
import '../../../../data/models/precheck- answer- list/precheck_answer_list.dart';
import '../../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';

class PreCheckQuestionWidget extends StatelessWidget {
  final PreCheckQuestion questionAnswer;
  final int index;
  const PreCheckQuestionWidget({Key? key,required this.questionAnswer,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
        side: BorderSide(
          color:AppColors.mainColor,
          width: 0.1.w
        )
      ),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.w,20.h, 20.w,10.h),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.mainColor,
                  radius:12.r,
                  child:  Center(
                    child: Text(
                      index.toString(),style:TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      fontSize: 12.sp
                    ),),
                  ),),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Text(
                    questionAnswer.questionName,style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      height: 1.2.h
                  ),
                  ),
                ),
              ],
            ),
            FormBuilderRadioGroup(
              initialValue: ShipmentRegistrationCubit.get(context).questionAnswerList.isEmpty?null:
              ShipmentRegistrationCubit.get(context).questionAnswerList[index-1].questionAnswer=='جيدة'?
              true:
              ShipmentRegistrationCubit.get(context).questionAnswerList[index-1].questionAnswer=='سيئة'?
              false:null,
              name: index.toString(),
              activeColor: AppColors.mainColor,
              wrapSpacing:30.w,
              decoration:
              InputDecoration(
                  border:const UnderlineInputBorder(
                      borderSide:BorderSide.none
                  ),
                contentPadding: context.locale==const Locale('ar')?EdgeInsets.fromLTRB(0, 0,20.w,0):EdgeInsets.fromLTRB(20.w, 0,0,0)
              ),
              onChanged: (value){
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              //validator:FormBuilderValidators.required(errorText: "لم يتم الاجابه على هذا السؤال "),
              // orientation: OptionsOrientation.vertical,
              validator: (value)
              {
                if(value==null)
                {
                  return "لم يتم الاجابه على هذا السؤال ";
                }
                else
                {
                  ShipmentRegistrationCubit.get(context).questionAnswerList[index-1]=
                      PreCheckAnswerList(questionId:questionAnswer.questionId ,questionAnswer: value.toString()=="true"?questionAnswer.questionAnswers[0]:questionAnswer.questionAnswers[1]);
                }
              },
              options: [true,false]
                  .map((ans) => FormBuilderFieldOption(
                value: ans,
                child: Text(
                    ans?questionAnswer.questionAnswers[0]:questionAnswer.questionAnswers[1],style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp)),
              ))
                  .toList(growable: false),//  const [] is more efficient than List.empty(growable: false)
            ),
          ],
        ),
      ),
    );
  }
}
