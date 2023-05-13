import 'package:flutter/material.dart';
import 'package:project_1/configs/themes/sub_themes_data_mixin.dart';

const Color primaryDarkColorDark = Color(0xFF2e3c62);
const Color primaryColorDark = Color(0xFF99ace1);
const Color mainTextColorDark = Colors.white;

class DarkTheme with SubThemeData {
  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTexttheme()
          .apply(bodyColor: mainTextColorDark, displayColor: mainTextColorDark),
    );
  }
}
