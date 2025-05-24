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
  static TextStyle get headerText =>
      GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle get totalLabel =>
      GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold);
  static TextStyle get totalNominal =>
      GoogleFonts.poppins(color: AppColors.primaryBlue, fontSize: 14);
  static TextStyle get dateDayText =>
      GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.bold);
  static TextStyle get dayName => GoogleFonts.poppins(fontSize: 12);
  static TextStyle get currentDayName =>
      GoogleFonts.poppins(color: Colors.white, fontSize: 12);
  static TextStyle get nominalText =>
      GoogleFonts.poppins(color: AppColors.primaryBlue, fontSize: 12);
  static TextStyle get transactionCategory =>
      GoogleFonts.poppins(fontSize: 9, color: AppColors.grayText);
  static TextStyle get categoryTitle =>
      normalText.copyWith(color: Colors.white);
}

class AppButtonStyles {
  static final primaryButton =
      ElevatedButton.styleFrom(backgroundColor: AppColors.primaryBlue);
}

class AppDecorations {
  static const bottomBorder = BoxDecoration(
      border:
          Border(bottom: BorderSide(color: AppColors.grayBorder, width: 1)));
  static final dayContainer = BoxDecoration(
      color: AppColors.grayBg, borderRadius: BorderRadius.circular(8));
  static final currentDayContainer = BoxDecoration(
      color: AppColors.primaryBlue, borderRadius: BorderRadius.circular(8));
  static final statisticHeader = BoxDecoration(
      border: AppDecorations.bottomBorder.border, color: AppColors.white);
  static final transactionInput = InputDecoration(
    border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.grayBorder)),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.grayBorder)),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryBlue)),
    contentPadding: EdgeInsets.fromLTRB(3, 0, 3, 3),
    isDense: true,
  );
  static final inputNominal = transactionInput.copyWith(
    prefixIcon: Text(
      "Rp",
      style: AppTextStyles.normalText,
    ),
    prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
  );
  static final categoryHeader = BoxDecoration(color: AppColors.black);
  static final categoryItem =
      BoxDecoration(border: Border.all(color: AppColors.grayBorder));
  static final categoryGrid = BoxDecoration(color: Colors.white);
}

class AppInputStyles {}
