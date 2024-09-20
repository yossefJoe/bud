import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class AppColors {
  static const Color primaryDark = Color(0xff000000);
  static const Color blackLightText = Color(0xff2A2A2A);
  static const Color primaryColor = Color(0xff6737CB);
  static const Color redCard = Color(0xffFB644D);
  static const Color pendingColor = Color(0xffFFC200);
  static const Color approvedColor = Color(0xff31D0AA);
  static const Color rejectedColor = Color(0xffDA1414);
  static const Color blueCard = Color(0x5E5E9D);
  static const Color errorColor = Color(0xffF40000);
  static const Color greenColor = Color(0xff219653);
  static const Color backgroundColor = Color(0xffffffff);
  static const Color cardColor = Color(0xffffffff);
  static const Color borderColor = Color(0xffD0D5DD);
  static const Color greyColor = Color(0xff7A7A7A);
  static const Color dividerColor = Color(0xffE8E8E8);
  static const Color disabledColor = Color(0xff9098A1);
  static const Color blueColor = Color(0xff0276D9);
  static const Color cafColor = Color(0xff8DDBE5);
  static const Color cafColor2 = Color(0xff307EBC);
}


extension AppColor on BuildContext{
  // bool isDark() => Theme.of(this).brightness == Brightness.dark;
  // Color get blue_E0 => isDark() ? const Color(0xFF83BAE0) : const Color(0xFF83BAE0);
  // Color get blue_EC => isDark() ? const Color(0xFF7FC0EC) : const Color(0xFF7FC0EC);
  // Color get blue_D9 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF0082D9);
  // Color get blue_E8 => isDark() ? const Color(0xFF0082D9) : const Color(0xFF66B4E8);
  // Color get green_45 => isDark() ? const Color(0xFF1AA945) : const Color(0xFF1AA945);
}