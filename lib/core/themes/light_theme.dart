
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/colors/color.dart';
import 'colors.dart';
import 'fonts.dart';

// const Color primaryColor = Color(0xff5FC1CF);
// const Color lighterDarkColor = Color(0xff69452E);
// const secondaryColor = Color(0xffffffff);
// const Color kGreyColor = Color(0xff818185);
// const Color blackColor = Color(0xff000000);


final lightTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  brightness: Brightness.dark,
  primaryColorDark: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  hintColor: AppColors.greyColor,
  cardColor: AppColors.cardColor,
  dividerColor: AppColors.borderColor,
  disabledColor: AppColors.disabledColor,
  shadowColor: AppColors.primaryDark.withOpacity(0.29),
  dividerTheme: const DividerThemeData(
    space: 0,
    thickness: 1,
    color: AppColors.borderColor,
  ),
  // iconTheme: const IconThemeData(
  //   color: kYellowColor,
  // ),
  colorScheme: ColorScheme.fromSwatch(
    // primarySwatch: Colors.green,
    //   primaryColorDark: const Color(0xFF232323),
    backgroundColor: AppColors.cardColor,
    // accentColor: const Color(0xff494949),
    errorColor: AppColors.errorColor,
  ).copyWith(
    // secondaryContainer: const Color(0xff06bd3d),
    // primaryContainer: const Color(0xffF9F0E1),
    // onSecondary: const Color(0xffF67D31),
    // secondary: const Color(0xffffffff),
    // outline: const Color(0xff818185),
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundColor,
      statusBarIconBrightness: Brightness.dark,
    ),
    color: Color(0xffffffff),
    elevation: 0,
    foregroundColor: Color(0xffF9F0E1),
    titleTextStyle: TextStyle(
      fontSize: 20,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryDark,
    ),
    //  backgroundColor: secondaryColor,
    centerTitle: true,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Color(0xffffffff),
    hintStyle: TextStyle(
      fontSize: 14,
      fontFamily: 'Cairo-Regular',
    ),

  ),
  fontFamily: Fonts.bold,
  textTheme:  const TextTheme(
    titleLarge: TextStyle(
      fontSize: 32,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.bold,
      color: AppColors.blackLightText,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.bold,
      color: AppColors.blackLightText,
    ),
    titleSmall: TextStyle(
      fontSize: 20.0,
      color: AppColors.blackLightText,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.bold,
    ),

    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: AppColors.blackLightText,
      fontFamily: Fonts.semiBold,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.0,
      color: AppColors.blackLightText,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: AppColors.blackLightText,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
      fontSize: 18.0,
      color: AppColors.greyColor,
      fontFamily: Fonts.semiBold,
      fontWeight: FontWeight.w600,
    ),
    displayMedium: TextStyle(
      fontSize: 16.0,
      color: AppColors.greyColor,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 14.0,
      color: AppColors.greyColor,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
      fontFamily: Fonts.semiBold,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontSize: 14.0,
      color: Colors.white,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.0,
      wordSpacing: 0.0,
    ),
    headlineSmall: TextStyle(
      fontSize: 14.0,
      color: primaryColor,
      fontFamily: Fonts.regular,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontSize: 16.0,
      color: primaryColor,
      fontFamily: Fonts.medium,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: TextStyle(
      fontSize: 18.0,
      color: primaryColor,
      fontFamily: Fonts.bold,
      fontWeight: FontWeight.w600,
    ),

  ),
);