import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:sky/core/constants/app_styles/app_styles.dart';
import 'package:sky/cubits/theme_cubit/theme_cubit.dart';

import '../models/weather_model.dart';

class DailyForecast extends StatelessWidget {
  final List<Forecastday> forecastDays;
  const DailyForecast({
    super.key,
    required this.forecastDays,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.watch<ThemeCubit>().state.isDarkMode;

    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xff273472) : Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: forecastDays.map((day) {
          int index = forecastDays.indexOf(day);
          String dayName;
          if (index == 0) {
            dayName = 'Today';
          } else if (index == 1) {
            dayName = 'Tomorrow';
          } else {
            DateTime date = DateTime.parse(day.date!); // Parse the date
            dayName = DateFormat('EE').format(date); // Get the day name
          }
          return _buildForecastColumn(
              context,
              dayName,
              day.day!.maxtempC!.ceil().toString(),
              day.day!.mintempC!.ceil().toString(),
              isDarkMode);
        }).toList(),
      ),
    );
  }

  Padding _buildForecastColumn(
      context, String day, String maxTemp, String minTemp, isDarkMode) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 12.h,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(day, style: TextStyles.font14w500),
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
            size: 40.sp,
          ),
          Text(
            '$maxTemp° / $minTemp°',
            style: TextStyles.font14w500,
          ),
        ],
      ),
    );
  }
}
