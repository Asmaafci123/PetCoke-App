abstract class HomeStates {}

class InitialHomeState extends HomeStates {}
class ToggleLanguageCodeSuccessHomeState extends HomeStates {}

class LoadingGetCurrentLocationHomeState extends HomeStates {}
class SuccessGetCurrentLocationHomeState extends HomeStates {}
class FailGetCurrentLocationHomeState extends HomeStates {
  final String message;
  FailGetCurrentLocationHomeState({required this.message});
}

class LoadingSendCurrentLocationHomeState extends HomeStates {}
class SuccessSendCurrentLocationHomeState extends HomeStates {
  final String message;
  SuccessSendCurrentLocationHomeState({required this.message});
}
class FailSendCurrentLocationHomeState extends HomeStates {
  final String message;
  FailSendCurrentLocationHomeState({required this.message});
}

class LoadingGetCurrentAddressHomeState extends HomeStates{}
class SuccessGetCurrentAddressHomeState extends HomeStates{}
class FailGetCurrentAddressHomeState extends HomeStates{
  final String message;
  FailGetCurrentAddressHomeState({required this.message});
}


class LoadingCheckCurrentAttendanceHomeState extends HomeStates{}
class SuccessCheckCurrentAttendanceHomeState extends HomeStates {
  final String message;
  SuccessCheckCurrentAttendanceHomeState ({required this.message});
}
class FailCheckCurrentAttendanceHomeState  extends HomeStates {
  final String message;
  FailCheckCurrentAttendanceHomeState ({required this.message});
}


class LoadingGetLastMobileVersionHomeState extends HomeStates{}
class SuccessGetLastMobileVersionHomeState extends HomeStates {
  final String message;
  SuccessGetLastMobileVersionHomeState ({required this.message});
}
class FailGetLastMobileVersionHomeState  extends HomeStates {
  final String message;
  FailGetLastMobileVersionHomeState ({required this.message});
}
