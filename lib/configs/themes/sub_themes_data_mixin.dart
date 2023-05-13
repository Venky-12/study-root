import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_1/configs/themes/app_colors.dart';

mixin SubThemeData {
  TextTheme getTexttheme() {
    return GoogleFonts.quicksandTextTheme(
      const TextTheme(
        bodyText1: TextStyle(fontWeight: FontWeight.bold),
        bodyText2: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  IconThemeData getIconTheme() {
    return const IconThemeData(color: onSurfaceTextColor, size: 16);
  }
}
