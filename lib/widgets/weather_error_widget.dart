import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky/widgets/custom_app_bar.dart';

import '../core/constants/app_styles/app_styles.dart';
import '../cubits/weather_cubit/weather_cubit.dart';

class WeatherErrorWidget extends StatelessWidget {
  const WeatherErrorWidget({super.key, required this.state});
  final WeatherError state;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Center(
          child: Column(
            spacing: 10.h,
            children: [
              Icon(Icons.wifi_off_outlined, size: 100.sp),
              Text(
                state.errorMessage.toString(),
                textAlign: TextAlign.center,
                style: TextStyles.font16w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
