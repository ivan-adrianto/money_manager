import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  bool _obscurePassword = true;

  bool get obscurePassword => _obscurePassword;

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }
}