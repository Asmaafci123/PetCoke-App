import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/custom_icon.dart';
import 'package:petcoke/presentation/screens/Add_Shipment/add_shipment.dart';
import 'package:petcoke/presentation/screens/Home/home_screen.dart';
import 'package:petcoke/presentation/screens/Pre_check/widgets/pre_check_question_widget.dart';

import '../../../core/constants/app-colors.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/app_strings.dart';
import '../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../logic/shipment_registeration_cubit/shipment_registeration_states.dart';
import '../../widgets/main-button.dart';
import '../../widgets/my_appbar.dart';
import '../../widgets/my_textformfield.dart';
import '../Add_Shipment/widgets/screen_title.dart';

class PreCheckListSecondScreen extends StatelessWidget {
  static const routeName = 'PreCheckListSecondScreen';
  const PreCheckListSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShipmentRegistrationCubit, ShipmentRegistrationStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final _formKey = GlobalKey<FormBuilderState>();
          var cubit = ShipmentRegistrationCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                    padding: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ScreenTitle(
                          color: AppColors.redColor,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        cubit.checkList.isNotEmpty
                            ? FormBuilder(
                                key: _formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: ListView.builder(
                                  key: GlobalKey(),
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder:
                                      (BuildContext context, int index) =>
                                          PreCheckQuestionWidget(
                                    questionAnswer: cubit.checkList[index + 10],
                                    index: index + 11,
                                  ),
                                  itemCount: cubit.checkList.length - 10,
                                ))
                            : SizedBox(
                                height: 5.h,
                              ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 150.h,
                          child: MyTextFormField(
                            validator: (value) =>
                                value!.isEmpty ? "required".tr() : null,
                            controller: cubit.notesPreCheckListController,
                            label: "Notes".tr(),
                            maxLines: 5,
                            // errorText: _cubit.errorMessage ==
                            //     'رقم السركى غير مسجل'
                            //     ? _cubit.errorMessage
                            //     : null,
                            // prefixIcon: Icons.person_outline_sharp,
                            keyboardType: TextInputType.multiline,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        MainButton(
                            onPressed: () {
                              if (cubit.checkList.isNotEmpty) {
                                if (_formKey.currentState?.validate() == true) {
                                  Navigator.pushNamed(
                                      context, AddShipmentScreen.routeName);
                                }
                              } else {
                                // cubit.startTrip();
                              }
                            },
                            title: AppStrings.addShipment.tr()),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    )),
              ),
            ),
          );
        });
  }
}
