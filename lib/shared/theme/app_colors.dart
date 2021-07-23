import 'package:flutter/material.dart';

class AppColors {
  static final blue = Color(0xFF004C64);
  static final blueText = Color(0xFF003C4F);
  static final green = Color(0xFF006452);
  static final greenDark = Color(0xFF133B34);
  static final white = Color(0xFFFFFFFF);
  static final black = Color(0xFF000000);

  static final linearGradient = LinearGradient(
    colors: [AppColors.blue, AppColors.green],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
