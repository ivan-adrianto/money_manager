import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_manager/styles/colors.dart';

class AppTextStyles {
  static TextStyle get logoText => GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get fieldLabel =>
      GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400);
  static TextStyle get inputText => GoogleFonts.poppins(fontSize: 14);
  static TextStyle get buttonText =>
      GoogleFonts.poppins(color: Color(0xFFFFFFFF), fontSize: 12);
  static TextStyle get linkText =>
      GoogleFonts.poppins(fontSize: 12, color: AppColors.primaryBlue);
  static TextStyle get normalText => GoogleFonts.poppins(fontSize: 12);
}

class AppButtonStyles {
  static final primaryButton =
      ElevatedButton.styleFrom(backgroundColor: AppColors.primaryBlue);
}
