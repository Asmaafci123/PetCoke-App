import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Pre_check/widgets/pre_check_question_widget.dart';
import '../../../../data/models/preCheck_question_model/pre_check_question.dart';
class MyForm extends StatelessWidget {
  var formKey;
  List<PreCheckQuestion> preCheckList ;
  MyForm({Key? key,required this.formKey,required this.preCheckList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
        key: formKey,
        autovalidateMode: AutovalidateMode.disabled,
        child: SizedBox(
          height: 600.h,
          child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            key: GlobalKey(),
            shrinkWrap: true,
            itemBuilder:
                (BuildContext context, int index) =>
                PreCheckQuestionWidget(
                  questionAnswer:
                  preCheckList[index],
                  index: index + 1,
                ),
            itemCount: preCheckList.length,
          ),
        )
    );
  }
}
