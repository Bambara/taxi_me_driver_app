//ignore: unused_import
import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import 'log.dart';

class PrefUtils {
  // static SharedPreferences? _sharedPreferences;

  final _storedPreferences = GetStorage();
  bool _isInit = false;

  // initDatabase() async {
  //   await GetStorage.init();
  // }

  PrefUtils() {
    // SharedPreferences.getInstance().then((value) {
    //   _sharedPreferences = value;
    // });
    if (_isInit == false) {
      init().then((value) {
        Log.i('Stored Preference Initialized');
      });
    }
  }

  Future<void> init() async {
    // _sharedPreferences ??= await SharedPreferences.getInstance();
    _isInit = await GetStorage.init();
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _storedPreferences!.erase();
  }
}
