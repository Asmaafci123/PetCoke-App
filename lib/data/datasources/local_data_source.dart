
import 'package:flutter/foundation.dart';

import '../../core/constants/keys.dart';
import '../models/credential_model/credential_model.dart';
import '../models/send_current_location_model/send_current_location_model.dart';
import '../models/user/user.dart';
import 'boxes.dart';

abstract class LocalDataSource {

  Future<void> cacheUser(User user);
  User? getCachedUser();
  Future<void> cacheLanguageCode(String languageCode) ;
  String? getLanguageCode();
  void clearCachedUser();
  Future<void> cacheLastCheckInModel(SendLocationModel checkInModel);
  SendLocationModel? getLastCheckInModel();
  void clearCachedLastCheckInModel();
  Future<void> cachePopTimes(DateTime times);
  DateTime? getCachedPopTimes();
  void clearCachedLanguageCode();
  void clearCachedPopTimes();
  Future<void> cacheCredentialDetails(CredentialDetails credentialDetails);
  CredentialDetails? getCachedCredentialDetails();
}

class LocalDataSourceImpl implements LocalDataSource {
  //final LocalStorageService localStorageService;
  //LocalDataSourceImpl({required this.localStorageService});
  @override
  Future<void> cacheUser(User user) async {
    final box = Boxes.getUser();
    box.put(userKey, user);
  }

  @override
  User? getCachedUser() {
    final box = Boxes.getUser();
    return box.get(userKey);
  }

  @override
  Future<void> cacheLanguageCode(String languageCode) async {
    final box = Boxes.getLanguageCode();
    box.put(languageCodeKey,languageCode);
  }

  @override
  String? getLanguageCode(){
    final box = Boxes.getLanguageCode();
    return box.get(languageCodeKey);
  }

  @override
  void clearCachedUser()async{
    final box = Boxes.getUser();
    await box.clear();
  }


  @override
  Future<void> cacheLastCheckInModel(SendLocationModel checkInModel) async {
    final box = Boxes.getCheckInModel();
    box.put(checkInModelKey, checkInModel);
  }

  @override
  SendLocationModel? getLastCheckInModel() {
    final box = Boxes.getCheckInModel();
    return box.get(checkInModelKey);
  }

  @override
  void clearCachedLastCheckInModel(){
    final box = Boxes.getCheckInModel();
    box.clear();
  }

  @override
  void clearCachedLanguageCode(){
    final box = Boxes.getLanguageCode();
    box.clear();
  }

  @override
  void clearCachedPopTimes(){
    final box = Boxes.getPopTimes();
    box.clear();
  }
  @override
  Future<void> cachePopTimes(DateTime times)async {
    final box = Boxes.getPopTimes();
    box.put(popTimesKey, times);
  }

  @override
  DateTime? getCachedPopTimes(){
    final box = Boxes.getPopTimes();
    return box.get(popTimesKey);
  }

  @override
  Future<void> cacheCredentialDetails(CredentialDetails credentialDetails)async {
    final box = Boxes.getCredentialDetails();
    box.put(credentialDetailsKey,credentialDetails);
  }

  @override
  CredentialDetails? getCachedCredentialDetails(){
    final box = Boxes.getCredentialDetails();
    return box.get(credentialDetailsKey);
  }
}