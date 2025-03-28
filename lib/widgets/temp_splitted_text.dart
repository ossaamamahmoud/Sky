import 'package:flutter/material.dart';
import 'package:sky/core/constants/app_styles/app_styles.dart';

class TemperatureSplittedText extends StatelessWidget {
  final int maxTemp;

  final int minTemp;

  const TemperatureSplittedText({
    super.key,
    required this.maxTemp,
    required this.minTemp,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          // "Max: " label with bold style
          TextSpan(text: "Max: ", style: TextStyles.font15w700),
          TextSpan(
            text: "$maxTemp° ",
            style: TextStyles.font14w500,
          ),
          // "/ Min: " label with bold style
          TextSpan(
            text: "/ Min: ",
            style: TextStyles.font15w700,
          ),
          // Minimum temperature value
          TextSpan(
            text: "$minTemp°",
            style: TextStyles.font14w500,
          ),
        ],
      ),
    );
  }
}
