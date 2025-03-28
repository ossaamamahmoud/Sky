import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_colors/app_theme_colors.dart';
import '../core/constants/app_strings.dart';
import '../core/constants/app_styles/app_styles.dart';
import '../cubits/theme_cubit/theme_cubit.dart';
import '../cubits/theme_cubit/theme_state.dart';
import '../screens/search_screen.dart';

AppBar customAppBar({
  required BuildContext context,
  Widget? leading,
  String? title,
  bool? isNotSearch = true,
}) =>
    AppBar(
      leading: leading,
      title: Text(
        title ?? AppStrings.appBarTitle,
        style: TextStyles.font22w700.copyWith(
          fontSize: 27.sp,
        ),
      ),
      actions: [
        isNotSearch!
            ? IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ));
                },
                icon: Icon(
                  Icons.search_rounded,
                  size: 30.sp,
                ),
              )
            : const SizedBox.shrink(),
        BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Switch(
              activeColor: AppColors.switchActiveColor,
              inactiveTrackColor: AppColors.appBarColorLightTheme,
              value: state.isDarkMode,
              thumbIcon: WidgetStateProperty.all(
                state.isDarkMode
                    ? const Icon(Icons.dark_mode_outlined)
                    : const Icon(Icons.light_mode_outlined),
              ),
              inactiveThumbColor: AppColors.switchInactiveColor,
              activeTrackColor: AppColors.appBarColorLightTheme,
              onChanged: (isDark) {
                context.read<ThemeCubit>().toggleTheme();
              },
            );
          },
        ),
      ],
    );
