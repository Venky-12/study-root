import 'package:flutter/material.dart';
import 'package:project_1/configs/themes/sub_themes_data_mixin.dart';

const Color primaryLightColorLight = Color.fromARGB(255, 224, 173, 247);
const Color primaryColorLight = Color.fromARGB(230, 164, 67, 166);
const Color mainTextColorLight = Color.fromARGB(255, 0, 0, 0);
const Color cardColor = Color.fromARGB(255, 254, 254, 255);

class LightTheme with SubThemeData {
  buildLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
        primaryColor: primaryColorLight,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        iconTheme: getIconTheme(),
        cardColor: cardColor,
        textTheme: getTexttheme().apply(
            bodyColor: mainTextColorLight, displayColor: mainTextColorLight));
  }
}
