import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_1/configs/themes/app_dark_theme.dart';
import 'package:project_1/configs/themes/app_light_theme.dart';
import 'package:project_1/configs/themes/ui_parametres.dart';

const Color onSurfaceTextColor = Colors.white;
const Color correctAnswerColor = Color.fromARGB(255, 95, 232, 22);
const Color wrongAnswerColor = Color.fromARGB(255, 232, 81, 81);
const Color notAnswerColor = Color.fromARGB(255, 98, 108, 129);

const mainGradientLight = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryLightColorLight, primaryColorLight]);

const mainGradientDark = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryDarkColorDark, primaryColorDark]);
LinearGradient mainGradient() =>
    UIParameters.isDarkMode() ? mainGradientDark : mainGradientLight;

Color customScaffoldColor(BuildContext context) => UIParameters.isDarkMode()
    ? const Color(0xFF2e3c62)
    : const Color.fromARGB(255, 240, 237, 255);

Color answerSelectedColor() => UIParameters.isDarkMode()
    ? Theme.of(Get.context!).cardColor.withOpacity(0.5)
    : Theme.of(Get.context!).primaryColor;

Color answerBorderColor() => UIParameters.isDarkMode()
    ? const Color.fromARGB(255, 20, 46, 156)
    : const Color.fromARGB(255, 221, 221, 221);
