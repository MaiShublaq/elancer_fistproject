import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

enum PrefKey { loggedIn, email, lang, first_run ,name}

class SharedPrefController {
  SharedPrefController._internal();

  static final SharedPrefController _instance =
      SharedPrefController._internal();

  late SharedPreferences _sharedPreferences;

  factory SharedPrefController() {
    return _instance;
    // return SharedPrefController._internal();
  }

  Future<void> initSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> save({required String email}) async {
    await _sharedPreferences.setBool(PrefKey.loggedIn.toString(), true);
    await _sharedPreferences.setString(PrefKey.email.toString(), email);

  }

  Future<void> setName({required String name}) async {
    await _sharedPreferences.setString(PrefKey.name.toString(), name);

  }
  Future<void> setFirstRun() async {
    await _sharedPreferences.setBool(PrefKey.loggedIn.toString(), true);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(PrefKey.loggedIn.toString()) ?? false;

  bool get firstRun =>
      _sharedPreferences.getBool(PrefKey.first_run.toString()) ?? false;
  String get name =>
      _sharedPreferences.getString(PrefKey.name.toString()) ?? 'MAi';

  //Future <bool> removeKey(String key)async{
  // return await _sharedPreferences.remove(key);
  //}
  //Future<bool> logdOut() async{
  //  await removeKey(PrefKey.email.toString());
  //     return await _sharedPreferences.setBool(PrefKey.loggedIn.toString(), false);
  //}

  Future<bool> changeLanguage({required String lang}) async {
    return await _sharedPreferences.setString(PrefKey.lang.toString(), lang);
  }

  String get language {
    return _sharedPreferences.getString(PrefKey.lang.toString()) ?? 'en';
  }

  Future<bool> clear() async {
    return await _sharedPreferences.clear();
  }
}
