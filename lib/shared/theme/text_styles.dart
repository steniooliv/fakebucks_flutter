import 'package:fakebucks_flutter/shared/theme/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final title = GoogleFonts.kanit(
    fontSize: 50,
    fontWeight: FontWeight.w700,
    color: AppColors.blueText,
  );
  static final cardTitle = GoogleFonts.kanit(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static final cardText = GoogleFonts.kanit(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );
  static final cardValue = GoogleFonts.kanit(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );
  static final checkout = GoogleFonts.kanit(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.blueText,
  );
  static final checkoutValue = GoogleFonts.kanit(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color: AppColors.blueText,
  );
}
