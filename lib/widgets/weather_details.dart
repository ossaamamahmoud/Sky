import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_styles/app_styles.dart';
import '../cubits/theme_cubit/theme_cubit.dart';

class WeatherDetails extends StatelessWidget {
  final String humidity;
  final String uvIndex;
  final String windSpeed;
  final String feelsLike;
  final String pressure;
  final String clouds;

  const WeatherDetails({
    super.key,
    required this.humidity,
    required this.uvIndex,
    required this.windSpeed,
    required this.feelsLike,
    required this.pressure,
    required this.clouds,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = context.watch<ThemeCubit>().state.isDarkMode;

    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDarkMode ? const Color(0xff273472) : Colors.black12,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        spacing: 16.h,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Weather Details",
            style: TextStyles.font16w700.copyWith(
              letterSpacing: 1.05,
            ),
          ),
          _buildWeatherDetailRow(
            context,
            Icons.water_drop,
            'Humidity: $humidity%',
            Icons.wb_sunny,
            'UV Index: $uvIndex',
          ),
          _buildWeatherDetailRow(
            context,
            Icons.air,
            'Wind Speed: $windSpeed kph',
            Icons.thermostat,
            'Feels Like: $feelsLike°',
          ),
          _buildWeatherDetailRow(
            context,
            Icons.compress,
            'Pressure: $pressure mb',
            Icons.cloud,
            'Clouds: $clouds',
          ),
        ],
      ),
    );
  }

  Row _buildWeatherDetailRow(
      context, IconData icon1, String text1, IconData icon2, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildWeatherDetail(context, icon1, text1),
        _buildWeatherDetail(context, icon2, text2),
      ],
    );
  }

  Row _buildWeatherDetail(context, IconData icon, String text) {
    return Row(
      spacing: 8.w,
      children: [
        Icon(icon),
        Text(text, style: TextStyles.font14w500),
      ],
    );
  }
}
