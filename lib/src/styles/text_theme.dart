import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_it/src/styles/app_colors.dart';

class TextStyling {
  TextStyling._();

  static TextStyle mainTitle = GoogleFonts.roboto(
      fontWeight: FontWeight.w800, fontSize: 24, color: AppColors.black);
  static TextStyle heading1 = GoogleFonts.roboto(
      fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.black);
  static TextStyle heading2 = GoogleFonts.roboto(
      fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.black);
  static TextStyle text = GoogleFonts.roboto(
      fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.black);
  static TextStyle paragraphTheme = GoogleFonts.roboto(
      fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.black);
}
