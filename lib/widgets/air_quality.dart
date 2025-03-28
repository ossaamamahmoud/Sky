import 'package:flutter/material.dart';

import '../core/constants/app_styles/app_styles.dart';

class AirQualityInfo extends StatelessWidget {
  final Animation<Offset> offsetAnimation;
  final String airQualityText;

  const AirQualityInfo({
    super.key,
    required this.offsetAnimation,
    required this.airQualityText,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SlideTransition(
        position: offsetAnimation,
        child: Text(
          airQualityText,
          style: TextStyles.font14w500,
        ),
      ),
    );
  }
}
