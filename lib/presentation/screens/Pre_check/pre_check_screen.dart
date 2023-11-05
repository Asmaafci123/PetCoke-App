import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petcoke/presentation/screens/Pre_check/pre_check_list_second_screen.dart';
import 'package:petcoke/presentation/screens/Pre_check/widgets/collection_of_questions.dart';
import 'package:petcoke/presentation/screens/Pre_check/widgets/pre_check_question_widget.dart';

import '../../../core/constants/app-colors.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/constants/app_strings.dart';
import '../../../injection_container.dart';
import '../../../logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';
import '../../../logic/shipment_registeration_cubit/shipment_registeration_states.dart';
import '../../utils/dialogs/loading_dialog.dart';
import '../../utils/dialogs/message_dialog.dart';
import '../../widgets/main-button.dart';
import '../../widgets/my_appbar.dart';
import '../../widgets/my_textformfield.dart';
import '../Home/home_screen.dart';

class PreCheckScreen extends StatefulWidget {
  static const routeName = 'PreCheckScreen';

  const PreCheckScreen({Key? key}) : super(key: key);

  @override
  State<PreCheckScreen> createState() => _PreCheckScreenState();
}

class _PreCheckScreenState extends State<PreCheckScreen> {
  @override
  void initState()
  {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async{
      await ShipmentRegistrationCubit.get(context).getMasterDataShipment();
    });
  }
  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<ShipmentRegistrationCubit, ShipmentRegistrationStates >(
        listener: (context, state) {
          if (state is GetMasterDataShipmentLoading) {
            loadingAlertDialog(context);
          }
          if (state is GetMasterDataShipmentSuccess) {
            Navigator.pop(context);
          }
          if (state is GetMasterDataShipmentFail) {
            Navigator.pop(context);
            showMessageDialog(
              height: 300.h,
              context: context,
              message: state.message,
              isSucceeded: false,
            );
          }
        },
        builder:(context,state) {
          final _formKey = GlobalKey<FormBuilderState>();
          var cubit = ShipmentRegistrationCubit.get(context);
          return  Scaffold(
            backgroundColor: Colors.white,
            //  appBar: MyAppBar(title: AppStrings.preCheck.tr(),),
              body: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: SafeArea(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(15.w, 10.h,15.w,5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(),
                              Text(
                                AppStrings.preCheck.tr(),
                                style: TextStyle(
                                    color: AppColors.redColor,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700),
                              ),
                              Spacer(),
                              InkWell(
                                child : context.locale == const Locale('ar')
                                    ?Icon(Icons.keyboard_arrow_left_outlined,size: 35.sp,weight:100.sp,color: AppColors.redColor,)
                                    :Icon(Icons.keyboard_arrow_right_outlined,size: 35.sp,weight:100.sp,color: AppColors.redColor,),
                                onTap : () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, HomeScreen.routeName, (Route<dynamic> route) => false);
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Text(AppStrings.truckInspectionProcedures.tr(),
                                style: TextStyle(
                                    color: AppColors.redColor,
                                    fontSize: 20.sp),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.fire_truck_outlined),
                                color: AppColors.redColor,
                                iconSize: 30.sp,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          cubit.checkList.isNotEmpty ?
                          FormBuilder(
                              key: _formKey,
                              autovalidateMode:
                              AutovalidateMode.disabled,
                              child:ListView.builder(
                                  key: GlobalKey(),
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemBuilder: (BuildContext context,
                                      int index) =>
                                      PreCheckQuestionWidget(
                                        questionAnswer:
                                        cubit.checkList[index],
                                        index: index +1,
                                      ),
                                  itemCount: 10,
                                ),) :
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MainButton(
                              onPressed: () {
                                if (cubit.checkList.isNotEmpty) {
                                  if (_formKey.currentState
                                      ?.validate() ==
                                      true) {
                                    Navigator.pushNamed(context, PreCheckListSecondScreen.routeName);
                                  }
                                }
                              },
                              title: "next".tr()),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      )
                  ),
                ),
              ),
            );
        }
      );
  }
}
