import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sky/cubits/theme_cubit/theme_state.dart';

import '../../core/constants/app_themes/app_dark_theme.dart';
import '../../core/constants/app_themes/app_light_theme.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  void toggleTheme() {
    final isDarkMode = state.isDarkMode;
    emit(
      ThemeToggled(
        themeData: isDarkMode ? appLightTheme() : appDarkTheme(),
        isDarkMode: !isDarkMode,
      ),
    );
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    final isDark = json['isDarkMode'] as bool;
    return ThemeToggled(
      themeData: isDark ? appDarkTheme() : appLightTheme(),
      isDarkMode: isDark,
    );
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    return {'isDarkMode': state.isDarkMode};
  }
}
