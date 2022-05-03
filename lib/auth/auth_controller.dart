import 'package:flutter/material.dart';
import 'package:listbook/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user == null) {
      Navigator.pushReplacementNamed(context, "/login");
    } else {
      _user = user;
      saveUser(user);
      Navigator.pushReplacementNamed(context, "/home");
    }
  }

  Future<void> saveUser(UserModel user) async {
    try {
      final instance = await SharedPreferences.getInstance();
      instance.setString("user", user.toJson());
    } catch (err) {}
  }

  Future<void> currentUser(BuildContext context) async {
    try {
      final instance = await SharedPreferences.getInstance();
      await Future.delayed(Duration(seconds: 2));
      if (instance.containsKey("user")) {
        final user = instance.get("user") as String;
        setUser(context, UserModel.fromJson(user));
      } else {
        setUser(context, null);
      }
    } catch (error) {
      setUser(context, null);
    }
  }
}
