library app_shared_preferences;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences {
  final SharedPreferences preferences;
  AppSharedPreferences({required this.preferences});
  Future<bool> updateToken(String token) async {
    return await preferences.setString('token', token);
  }

  String? getToken() {
    return preferences.getString('token');
  }

  Future<bool> removeToken(BuildContext context) async {
    return await preferences.remove('token');
  }
}
