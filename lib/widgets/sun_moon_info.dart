import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky/core/constants/app_styles/app_styles.dart';

import '../cubits/theme_cubit/theme_cubit.dart';

class SunMoonInfo extends StatelessWidget {
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;

  const SunMoonInfo({
    super.key,
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.watch<ThemeCubit>().state.isDarkMode;

    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: isDarkMode ? const Color(0xff273472) : Colors.black12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSunMoonColumn("Sunrise", Icons.wb_sunny, sunrise),
          _buildSunMoonColumn("Sunset", Icons.sunny_snowing, sunset),
          _buildSunMoonColumn("Moonrise", Icons.nightlight_outlined, moonrise),
          _buildSunMoonColumn("Moonset", Icons.nightlight, moonset),
        ],
      ),
    );
  }

  Widget _buildSunMoonColumn(
    String title,
    IconData icon,
    String time,
  ) {
    return Flexible(
      child: FittedBox(
        child: Column(
          spacing: 12.h,
          children: [
            Text(
              title,
              style: TextStyles.font14w500,
              maxLines: 1,
            ),
            Icon(
              icon,
              color: Colors.yellow,
              size: 28.sp,
            ),
            Text(
              time,
              style: TextStyles.font14w500,
            ),
          ],
        ),
      ),
    );
  }
}
