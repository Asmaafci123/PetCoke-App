class AppEndpoints {
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `LocalStorageKey()` accidentally
  AppEndpoints._();
  // the properties are static so that we can use them without a class instance
  // e.g. can be retrieved by `LocalStorageKey.saveUserId`.
  static const String baseUrl = 'http://20.86.97.165/PetCokeApi/api';
  static const String userLogin = '$baseUrl/UserCredentials/Login';
  static const String getMasterDataOfShipment = '$baseUrl/ShipmentAPI/GetAvailableVessels';
  static const String registerShipment = '$baseUrl/ShipmentAPI/GetShipmentDetails';
  static const String sendCurrentLocation = '$baseUrl/AttendanceApi/CurrentLocation';
  static const String checkInAndCheckOut = '$baseUrl/AttendanceApi/Attendance';
  static const String employeeLastCheckIn = '$baseUrl/AttendanceApi/EmployeeLastCheckIn';
  static const String changePassword = '$baseUrl/UserCredentials/ChangePassword';
  static const String getLastMobileVersion= '$baseUrl/UserCredentials/MobileVersion';
}

