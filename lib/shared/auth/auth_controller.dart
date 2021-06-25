import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';

class AuthController {
  // ignore: unused_field
  var _isAuthenticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;

      Navigator.restorablePushReplacementNamed(context, "/home");
    } else {
      _isAuthenticated = false;
      
       Navigator.restorablePushReplacementNamed(context, "/login");
    }
  }
}
