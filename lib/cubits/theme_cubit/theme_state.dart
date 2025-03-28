import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_themes/app_light_theme.dart';

@immutable
sealed class ThemeState extends Equatable {
  final ThemeData themeData;
  final bool isDarkMode;

  const ThemeState({required this.themeData, required this.isDarkMode});

  @override
  List<Object> get props => [themeData, isDarkMode];
}

class ThemeInitial extends ThemeState {
  ThemeInitial() : super(themeData: appLightTheme(), isDarkMode: false);
}

class ThemeToggled extends ThemeState {
  const ThemeToggled({required super.themeData, required super.isDarkMode});
}
