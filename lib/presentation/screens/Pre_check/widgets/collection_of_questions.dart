import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Pre_check/widgets/pre_check_question_widget.dart';

import '../../../../core/constants/app-colors.dart';
import '../../../../data/models/preCheck_question_model/pre_check_question.dart';
import '../../../widgets/main-button.dart';

class CollectionOfQuestions extends StatelessWidget {
  final String title;
  final List<PreCheckQuestion> preCheckList;
  final VoidCallback function;
  const CollectionOfQuestions({Key? key,required this.title,required this.preCheckList,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: AppColors.redColor, fontSize: 20.sp),
        ),
        FormBuilder(
          key: formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            children: [
              SizedBox(
                height: 580.h,
                child: ListView.builder(
                  key: GlobalKey(),
                  shrinkWrap: true,
                  itemBuilder:
                      (BuildContext context, int index) =>
                      PreCheckQuestionWidget(
                        questionAnswer: preCheckList[index],
                        index:index,
                      ),
                  itemCount:preCheckList.length,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              MainButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() ==
                        true) {
                      function();
                    }
                  },
                  title: "next".tr()),
            ],
          ),
        ),
      ],
    );
  }
}
