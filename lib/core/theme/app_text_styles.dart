import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/core/theme/app_colors.dart';

class AppTextStyles {
  static TextStyle font18SemiBold = GoogleFonts.nunitoSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.wihteColor,
  );

  static TextStyle font12Reguler = GoogleFonts.nunitoSans(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: AppColors.greyColor,
  );
}
