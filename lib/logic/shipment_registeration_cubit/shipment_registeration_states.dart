abstract class ShipmentRegistrationStates {}

class InitialGetShipmentRegistrationState extends ShipmentRegistrationStates{}

class GetPreCheckQuestionsLoading extends ShipmentRegistrationStates{}

class GetPreCheckQuestionsSuccess extends ShipmentRegistrationStates{}

class GetPreCheckQuestionsFail extends ShipmentRegistrationStates{
  final String? message;

  GetPreCheckQuestionsFail(this.message);
}



class GetMasterDataShipmentLoading extends ShipmentRegistrationStates{}

class GetMasterDataShipmentSuccess extends ShipmentRegistrationStates{}

class GetMasterDataShipmentFail extends ShipmentRegistrationStates{
  final String? message;

  GetMasterDataShipmentFail(this.message);
}

class SelectVesselSuccess extends ShipmentRegistrationStates{}

class SelectStoreFromSuccess extends ShipmentRegistrationStates{}

class SelectStoreToSuccess extends ShipmentRegistrationStates{}

class ImageAddedSuccess extends ShipmentRegistrationStates{}

class RegisterShipmentLoading extends ShipmentRegistrationStates{}

class RegisterShipmentSuccess extends ShipmentRegistrationStates{
  final String? message;

  RegisterShipmentSuccess(this.message);
}

class RegisterShipmentFail extends ShipmentRegistrationStates{
  final String? message;

  RegisterShipmentFail(this.message);
}

class NextStepSuccess extends ShipmentRegistrationStates{}
class PreviousStepSuccess extends ShipmentRegistrationStates{}
class SetCurrentStepSuccess extends ShipmentRegistrationStates{}
class ChangeEntryDateSuccess extends ShipmentRegistrationStates{}
class ChangeExitDateSuccess extends ShipmentRegistrationStates{}
class ChangeIconColorSuccess extends ShipmentRegistrationStates{}
class ChangeTruckLicenseValidationSuccess extends ShipmentRegistrationStates{}