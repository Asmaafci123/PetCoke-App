abstract class AttendanceStates {}
class InitialAttendanceState extends AttendanceStates {}


class LoadingCheckedInAttendanceState extends AttendanceStates {}
class SuccessCheckedInAttendanceState extends AttendanceStates {
  final String message;
  SuccessCheckedInAttendanceState({required this.message});
}
class FailCheckedInAttendanceState extends AttendanceStates {
  final String message;
  FailCheckedInAttendanceState({required this.message});
}

class LoadingCheckedOutAttendanceState extends AttendanceStates {}
class SuccessCheckedOutAttendanceState extends AttendanceStates {
  final String message;
  SuccessCheckedOutAttendanceState({required this.message});
}
class FailCheckedOutAttendanceState extends AttendanceStates {
  final String message;
  FailCheckedOutAttendanceState({required this.message});
}


class LoadingGetCurrentLocationAttendanceState extends AttendanceStates {}
class SuccessGetCurrentLocationAttendanceState extends AttendanceStates {}
class FailGetCurrentLocationAttendanceState extends AttendanceStates {
  final String message;
  FailGetCurrentLocationAttendanceState({required this.message});
}

class LoadingCheckCurrentAttendanceAttendanceState extends AttendanceStates {}
class SuccessCheckCurrentAttendanceAttendanceState extends AttendanceStates {
  final String message;
  SuccessCheckCurrentAttendanceAttendanceState ({required this.message});
}
class FailCheckCurrentAttendanceAttendanceState  extends AttendanceStates {
  final String message;
  FailCheckCurrentAttendanceAttendanceState ({required this.message});
}
class LoadingCheckCurrentAttendanceAttendanceStates extends AttendanceStates{}
class SuccessCheckCurrentAttendanceAttendanceStates extends AttendanceStates {
  final String message;
  SuccessCheckCurrentAttendanceAttendanceStates ({required this.message});
}
class FailCheckCurrentAttendanceAttendanceStates extends AttendanceStates{
  final String message;
  FailCheckCurrentAttendanceAttendanceStates({required this.message});
}