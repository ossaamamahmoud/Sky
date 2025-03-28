import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky/core/constants/app_styles/app_styles.dart';

class CurrentWeatherInfo extends StatelessWidget {
  final String temperature;
  final String conditionText;
  final String conditionIconUrl;

  const CurrentWeatherInfo({
    super.key,
    required this.temperature,
    required this.conditionText,
    required this.conditionIconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              '$temperature°',
              style: TextStyles.font22w700.copyWith(
                fontSize: 75.sp,
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              conditionText,
              style: TextStyles.font16w700,
            ),
          ],
        ),
        Expanded(
          child: Image.network(
            fit: BoxFit.cover,
            height: 100.h,
            conditionIconUrl,
          ),
        ),
      ],
    );
  }
}
