import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:buffer/buffer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petcoke/core/constants/app_constants.dart';
import 'package:petcoke/core/constants/app_strings.dart';
import 'package:petcoke/data/models/add_shipment_model/add_shipment_model.dart';
import 'package:petcoke/data/models/details_model/details_model.dart';
import 'package:petcoke/data/models/pre_check_answer/pre_check_answer.dart';
import 'package:petcoke/data/models/responses/master_data_add_shipment/master_data_add_shipment.dart';
import 'package:petcoke/data/models/shipment_model/shipment_model.dart';
import 'package:petcoke/logic/shipment_registeration_cubit/shipment_registeration_states.dart';
import '../../core/utils/services/attachments_service.dart';
import '../../data/models/preCheck_question_model/pre_check_question.dart';
import '../../data/models/precheck- answer- list/precheck_answer_list.dart';
import '../../data/models/store/store.dart';
import '../../data/models/vessel/vessel.dart';
import '../../data/repositories/petcoke_repository.dart';

class ShipmentRegistrationCubit extends Cubit<ShipmentRegistrationStates> {
  static ShipmentRegistrationCubit get(context) => BlocProvider.of(context);
  final PetCokeRepository petCokeRepository;
  final AttachmentsService attachmentsService;
  ShipmentRegistrationCubit(
      {required this.petCokeRepository, required this.attachmentsService})
      : super(InitialGetShipmentRegistrationState());
  TextEditingController notesController = TextEditingController();
  String errorMessage = '';
  List<PreCheckQuestion> checkList = [];
  List<PreCheckAnswerList> questionAnswerList = [];
  List<Store> stores = [];
  List<Vessel> vessels = [];
  TextEditingController notesPreCheckListController = TextEditingController();
  ShipmentModel? shipment;
  Vessel? selectedVessel;
  Store? selectedStoreFrom;
  Store? selectedStoreTo;
  getMasterDataShipment() async {
    vessels = [];
    stores = [];
    selectedVessel = null;
    selectedStoreFrom = null;
    selectedStoreTo = null;
    questionAnswerList = [];
    emit(GetMasterDataShipmentLoading());
    final result = await petCokeRepository.getMasterDataShipment();
    result.fold((failure) {
      emit(GetMasterDataShipmentFail(failure.message));
    }, (response) {
      checkList = response.data.questionAnswers;
      stores = response.data.stores;
      vessels = response.data.vessels;
      for (int i = 0; i < checkList.length; i++) {
        questionAnswerList.add(PreCheckAnswerList(
            questionId: checkList[i].questionId, questionAnswer: null));
      }
      print("*******************");
      print(questionAnswerList);
      print("*******************");
      emit(GetMasterDataShipmentSuccess());
    });
  }

  void onChangeSelectedVessel(Vessel? newVessel) {
    selectedVessel = newVessel;
    emit(SelectVesselSuccess());
  }

  void onChangeSelectedStoreFrom(Store? newStore) {
    selectedStoreFrom = newStore;
    emit(SelectStoreFromSuccess());
  }

  void onChangeSelectedStoreTo(Store? newStore) {
    selectedStoreTo = newStore;
    emit(SelectStoreToSuccess());
  }

  TextEditingController numberOfBillController = TextEditingController();
  TextEditingController numberOfBillAnalysisController =
      TextEditingController();
  TextEditingController driverNameController = TextEditingController();
  TextEditingController driverCardNumberController = TextEditingController();
  TextEditingController driverCardLicenseController = TextEditingController();
  TextEditingController driverNumberController = TextEditingController();
  TextEditingController truckNumberController = TextEditingController();
  TextEditingController truckLicenseController = TextEditingController();
  //TextEditingController dateTimeController=TextEditingController();
  TextEditingController entryDateTimeController = TextEditingController();
  TextEditingController exitDateTimeController = TextEditingController();
  TextEditingController truckWeightController = TextEditingController();
  TextEditingController notesAddShipmentController = TextEditingController();

  String formatDate(DateTime date) {
    return DateFormat("yyyy-MM-dd hh:mm", "en_US").format(date);
  }

  initDate() {
    entryDateTimeController.text = formatDate(DateTime.now());
    exitDateTimeController.text = formatDate(DateTime.now());
    startEntryTime = DateTime.now();
    currentStepInStepper = 0;
    selectedVessel = null;
    selectedStoreFrom = null;
    selectedStoreTo = null;
    files = [];
    images = [];
    attachmentsBilling = [];
    attachmentsBillingAnalysis = [];
    attachmentsDriverCardNumber = [];
    attachmentsDriverCardLicense = [];
    attachmentsTruckLicense = [];
    attachmentsTruckWeight = [];
    attachmentsBillingFile = [];
    attachmentsBillingAnalysisFile = [];
    attachmentsDriverCardNumberFile = [];
    attachmentsDriverCardLicenseFile = [];
    attachmentsTruckLicenseFile = [];
    attachmentsTruckWeightFile = [];
   driverIconColor=Colors.grey;
    truckIconColor=Colors.grey;
  }

  //List<XFile> images = [];
// FilePickerResult? file;
  List<File> files = [];
  List<XFile>? images = [];
  List<String> attachmentsBilling = [];
  List<String> attachmentsBillingAnalysis = [];
  List<String> attachmentsDriverCardNumber = [];
  List<String> attachmentsDriverCardLicense = [];
  List<String> attachmentsTruckLicense = [];
  List<String> attachmentsTruckWeight = [];
  List<File> attachmentsBillingFile = [];
  List<File> attachmentsBillingAnalysisFile = [];
  List<File> attachmentsDriverCardNumberFile = [];
  List<File> attachmentsDriverCardLicenseFile = [];
  List<File> attachmentsTruckLicenseFile = [];
  List<File> attachmentsTruckWeightFile = [];
  Future<Uint8List?> testCompressFile(File file) async {
    var result = await FlutterImageCompress.compressWithFile(file.absolute.path,
        minWidth: 1200, minHeight: 900, quality: 60, rotate: 90);

    return result;
  }

  void pickImages(int id) async {
    images = await attachmentsService.getMultiImages();
    if (images != null) {
      files = images!.map((image) => File(image.path ?? "")).toList();
      switch (id) {
        case 1:
          attachmentsBillingFile = files;
        case 2:
          attachmentsBillingAnalysisFile = files;
        case 3:
          attachmentsDriverCardNumberFile = files;
        case 4:
          attachmentsDriverCardLicenseFile = files;
        case 5:
          attachmentsTruckLicenseFile = files;
        case 6:
          attachmentsTruckWeightFile = files;
      }
      for (var element in files) {
        // Uint8List bytes = element.readAsBytesSync();
        Uint8List? bytes = await testCompressFile(element);
        print(bytes!.lengthInBytes);
        switch (id) {
          case 1:
            attachmentsBilling.add(base64Encode(bytes));
          case 2:
            attachmentsBillingAnalysis.add(base64Encode(bytes));
          case 3:
            attachmentsDriverCardNumber.add(base64Encode(bytes));
          case 4:
            attachmentsDriverCardLicense.add(base64Encode(bytes));
          case 5:
            attachmentsTruckLicense.add(base64Encode(bytes));
          case 6:
            attachmentsTruckWeight.add(base64Encode(bytes));
        }
      }
    }
    // file = await attachmentsService.getGalleryImage();
    // print(file);
    // if(file!=null)
    //   {
    //     files = file!.paths.map((path) => File(path??'')).toList();
    //     switch(id)
    //     {
    //       case 1:
    //         attachmentsBillingFile=files;
    //       case 2:
    //         attachmentsBillingAnalysisFile=files;
    //       case 3:
    //         attachmentsDriverCardNumberFile=files;
    //       case 4:
    //         attachmentsDriverCardLicenseFile=files;
    //       case 5:
    //         attachmentsTruckLicenseFile=files;
    //       case 6:
    //         attachmentsTruckWeightFile=files;
    //     }
    //     for(var element in files)
    //       {
    //         Uint8List bytes = element.readAsBytesSync();
    //         switch(id)
    //         {
    //           case 1:
    //             attachmentsBilling.add(base64Encode(bytes));
    //           case 2:
    //             attachmentsBillingAnalysis.add(base64Encode(bytes));
    //           case 3:
    //             attachmentsDriverCardNumber.add(base64Encode(bytes));
    //           case 4:
    //             attachmentsDriverCardLicense.add(base64Encode(bytes));
    //           case 5:
    //             attachmentsTruckLicense.add(base64Encode(bytes));
    //           case 6:
    //             attachmentsTruckWeight.add(base64Encode(bytes));
    //         }
    //       }
    //   }
    //  print(files);
    // print(attachmentsBilling);
    emit(ImageAddedSuccess());
  }

  registerShipment() async {
    emit(RegisterShipmentLoading());
    if(truckWeightController.text.isEmpty)
    {
      emit(RegisterShipmentFail("Truck's Weight is empty"));
      return;
    }
    if (double.parse(truckWeightController.text) > selectedVessel!.remain) {
      emit(RegisterShipmentFail(AppStrings.shipmentWeightError.tr()));
      return;
    }
    final result = await petCokeRepository.registerShipment(
        shipment: AddShipmentModel(
      preCheckAnswer: PreCheckAnswer(
          questionAnswers: questionAnswerList,
          note: notesPreCheckListController.text.toString()),
      shipment: ShipmentModel(
          vesselID: selectedVessel!.vesselId.toString(),
          vesselName: selectedVessel!.vesselName.toString(),
          fromPortId: selectedStoreFrom!.id,
          toWHId: selectedStoreTo!.id,
          deliveryNote: DetailsModel(
              name: numberOfBillController.text,
              attachments: attachmentsBilling),
          analysisCardNo: DetailsModel(
              name: numberOfBillAnalysisController.text,
              attachments: attachmentsBillingAnalysis),
          driverIDNo: DetailsModel(
              name: driverCardNumberController.text,
              attachments: attachmentsDriverCardNumber),
          driverLicenseNo: DetailsModel(
              name: driverCardLicenseController.text,
              attachments: attachmentsDriverCardLicense),
          truckLicenseNo: DetailsModel(
              name: truckLicenseController.text,
              attachments: attachmentsTruckLicense),
          truckLicenseValidation: truckLicenseValid,
          netweight: DetailsModel(
              name: truckWeightController.text,
              attachments: attachmentsTruckWeight),
          date: DateTime.now(),
          entryTime: DateTime.parse(entryDateTimeController.text),
          exittime: DateTime.parse(exitDateTimeController.text),
          driverName: driverNameController.text,
          driverMobileNo: driverNumberController.text,
          licensePlateNo: truckNumberController.text,
          notes: notesAddShipmentController.text.toString()),
      userId: AppConstants.user.userId!,
      //languageCode: AppConstants.languageCode
    ));
    result.fold((failure) {
      emit(RegisterShipmentFail(failure.message));
    }, (response) {
      currentStepInStepper = 0;
      attachmentsBilling = [];
      attachmentsBillingAnalysis = [];
      attachmentsDriverCardNumber = [];
      attachmentsDriverCardLicense = [];
      attachmentsTruckLicense = [];
      attachmentsTruckWeight = [];
      emit(RegisterShipmentSuccess(response.message));
    });
  }

  int currentStepInStepper = 0;
  void nextStepInStepper() {
    currentStepInStepper += 1;
    emit(NextStepSuccess());
  }

  void previousStepInStepper() {
    if (currentStepInStepper > 0) {
      currentStepInStepper -= 1;
      emit(PreviousStepSuccess());
    }
  }

  void setCurrentStepInStepper(int step) {
    currentStepInStepper = step;
    emit(SetCurrentStepSuccess());
  }

  late DateTime startEntryTime;
  changeEntryDate(DateTime? entryDate) {
    if (entryDate != null) {
      //entryDateTimeController.text=entryDate.toString();
      startEntryTime = entryDate;
      emit(ChangeEntryDateSuccess());
    }
  }

  changeExitDate(DateTime? exitDate) {
    if (exitDate != null) {
      exitDateTimeController.text = exitDate.toString();
      emit(ChangeExitDateSuccess());
    }
  }
  Color driverIconColor=Colors.grey;
  Color truckIconColor=Colors.grey;
  changeIconDriverColor(Color color)
  {
    driverIconColor=color;
    emit(ChangeIconColorSuccess());
  }
  changeIconTruckColor(Color color)
  {
    truckIconColor=color;
    emit(ChangeIconColorSuccess());
  }

  bool truckLicenseValid=false;
  changeTruckLicenseValid(bool check)
  {
    truckLicenseValid=check;
    emit(ChangeTruckLicenseValidationSuccess());
  }
}
