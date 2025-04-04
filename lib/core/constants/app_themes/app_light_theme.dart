import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors/app_theme_colors.dart';
import '../app_strings.dart';
import '../app_styles/app_styles.dart';

ThemeData appLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: AppColors.primaryColorLightTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBarColorLightTheme,
      elevation: 0,
      titleTextStyle: TextStyles.font22w700.copyWith(
        color: AppColors.textColorLightTheme,
      ),
    ),
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorLightTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            WidgetStateProperty.all(AppColors.elevatedButtonColorLightTheme),
        foregroundColor: WidgetStateProperty.all(AppColors
            .elevatedButtonTextColorLightTheme), // ✅ Controls text color
        textStyle: WidgetStateProperty.all(TextStyles.font15w700),
        minimumSize: WidgetStateProperty.all(Size(120.w, 45)),
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
    ),
    textTheme: base.textTheme.apply(
      bodyColor: AppColors.textColorLightTheme,
      displayColor: AppColors.textColorLightTheme,
      fontFamily: AppStrings.appFontFamily,
    ),
  );
}
