import 'package:hive/hive.dart';
import 'package:petcoke/core/constants/keys.dart';
import 'package:petcoke/data/models/send_current_location_model/send_current_location_model.dart';

import '../models/credential_model/credential_model.dart';
import '../models/user/user.dart';

class Boxes
{
  static Box<User>getUser()=>Hive.box<User>('user');
  static Box getLanguageCode()=>Hive.box('languageCode');
  static Box<SendLocationModel>getCheckInModel()=>Hive.box<SendLocationModel>('checkInModel');
  static Box getRouteBox()=>Hive.box('route');
  static Box<DateTime>getPopTimes()=>Hive.box<DateTime>(popTimesKey);
  static Box<CredentialDetails>getCredentialDetails()=>Hive.box<CredentialDetails>(credentialDetailsKey);
}