abstract class ProfileStates {}

class InitialProfileState extends ProfileStates  {}

class ChangePasswordVisibilityState extends ProfileStates{}


class LoadingChangeCurrentPassword extends ProfileStates{}

class SuccessChangeCurrentPassword extends ProfileStates {
  final String? message;

  SuccessChangeCurrentPassword (this.message);
}

class FailChangeCurrentPassword extends ProfileStates {
  final String? message;

  FailChangeCurrentPassword(this.message);
}
class SuccessClearChangePasswordState extends ProfileStates{}