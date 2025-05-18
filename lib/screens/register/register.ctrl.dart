import 'package:flutter/material.dart';

class RegisterController extends ChangeNotifier {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  bool get obscurePassword => _obscurePassword;
  bool get obscureConfirmPassword => _obscureConfirmPassword;

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  void toggleConfirmPassVisibility() {
    _obscureConfirmPassword = !_obscureConfirmPassword;
    notifyListeners();
  }
}
