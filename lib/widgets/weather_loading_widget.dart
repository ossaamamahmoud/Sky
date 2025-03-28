import 'package:flutter/material.dart';

import '../core/constants/app_strings.dart';
import '../core/constants/app_styles/app_styles.dart';

class WeatherLoadingWidget extends StatelessWidget {
  const WeatherLoadingWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppStrings.loadingScreenLoadingText,
            style: TextStyles.font20w700,
          ),
        ),
      ),
    );
  }
}
