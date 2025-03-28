import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky/core/constants/app_strings.dart';

import '../app_colors/app_theme_colors.dart';
import '../app_styles/app_styles.dart';

ThemeData appDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: AppColors.primaryColorDarkTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBarColorDarkTheme,
      elevation: 0,
      titleTextStyle: TextStyles.font22w700.copyWith(
        color: AppColors.textColorDarkTheme,
      ),
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorDarkTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(AppColors.elevatedButtonColorDarkTheme),
        foregroundColor: WidgetStateProperty.all(AppColors
            .elevatedButtonTextColorDarkTheme), // ✅ Controls text color
        textStyle: WidgetStateProperty.all(TextStyles.font15w700),
        minimumSize: WidgetStateProperty.all(Size(120.w, 45)),
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
    ),
    textTheme: base.textTheme.apply(
      bodyColor: AppColors.textColorDarkTheme,
      displayColor: AppColors.textColorDarkTheme,
      fontFamily: AppStrings.appFontFamily,
    ),
  );
}
