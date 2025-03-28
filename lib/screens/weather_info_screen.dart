import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky/core/constants/app_strings.dart';
import 'package:sky/widgets/custom_app_bar.dart';
import 'package:sky/widgets/temp_splitted_text.dart';

import '../models/weather_model.dart';
import '../widgets/air_quality.dart';
import '../widgets/current_weather_info.dart';
import '../widgets/daily_forecast.dart';
import '../widgets/sun_moon_info.dart';
import '../widgets/weather_details.dart';

class WeatherInfoScreen extends StatefulWidget {
  const WeatherInfoScreen({super.key, this.weatherModel});

  final WeatherModel? weatherModel;

  @override
  _WeatherInfoScreenState createState() => _WeatherInfoScreenState();
}

class _WeatherInfoScreenState extends State<WeatherInfoScreen>
    with
        SingleTickerProviderStateMixin // Provides a single ticker for animations, ensuring efficiency

{
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    airQualityAnimationProperties();
  }

  // Function to set up animation for air quality info
  void airQualityAnimationProperties() {
    _controller = AnimationController(
      duration: const Duration(seconds: 10), // Animation duration (10 seconds)
      vsync: this, // Uses the screen refresh rate to optimize animation
    )..repeat(); // Makes the animation loop indefinitely

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(1, 0), // Start position (off-screen right)
      end: const Offset(-1, 0), // End position (off-screen left)
    ).animate(CurvedAnimation(
      parent: _controller, // Link animation to the controller
      curve: Curves.linear, // Makes the movement smooth and constant
    ));
  }

  /*
   * What is a Tween?
   * A Tween (short for "in-between") defines how a value changes between a start and an end.
   * In this case, we are animating an Offset from right to left.
   * Other types of Tweens include:
   * - ColorTween: Animates between two colors.
   * - SizeTween: Animates between two sizes.
   * - IntTween: Animates between two integer values.
   * - DoubleTween: Animates between two double values.
   * - RectTween: Animates between two rectangles.
   */
  @override
  void dispose() {
    _controller.dispose(); // Always dispose of controllers to free up memory
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final forecastDays = widget.weatherModel!.forecast!.forecastday!;
    final astro = forecastDays[0].astro!;
    final currentDay = forecastDays[0].day!;
    final currentWeather = widget.weatherModel!.current!;

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: widget.weatherModel!.location!.name,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight:
                  MediaQuery.of(context).size.height - kToolbarHeight - 32.h,
            ),
            child: Column(
              spacing: 10.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CurrentWeatherInfo(
                  temperature: currentWeather.tempC!.round().toString(),
                  conditionText: currentWeather.condition!.text!,
                  conditionIconUrl: "https:${currentWeather.condition!.icon}",
                ),
                Row(
                  spacing: 10.w,
                  children: [
                    TemperatureSplittedText(
                      maxTemp: currentDay.maxtempC!.round(),
                      minTemp: currentDay.mintempC!.round(),
                    ),
                    Expanded(
                      child: AirQualityInfo(
                        offsetAnimation:
                            _offsetAnimation, // Pass the animation to the widget
                        airQualityText:
                            'Air Quality: ${currentWeather.airQuality!.pm10!.round()} - ${_getAirQualityDescription(
                          currentWeather.airQuality!.gbdefraindex!,
                        )}',
                      ),
                    ),
                  ],
                ),
                SunMoonInfo(
                  sunrise: astro.sunrise!,
                  sunset: astro.sunset!,
                  moonrise: astro.moonrise!,
                  moonset: astro.moonset!,
                ),
                WeatherDetails(
                  humidity: currentDay.avghumidity!.toString(),
                  uvIndex: currentWeather.uv.toString(),
                  windSpeed: currentDay.maxwindKph!.round().toString(),
                  feelsLike: currentWeather.feelslikeC!.round().toString(),
                  pressure: currentWeather.pressureMb!.toString(),
                  clouds: currentWeather.cloud!.round().toString(),
                ),
                DailyForecast(
                  forecastDays: forecastDays,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String _getAirQualityDescription(dynamic airQualityIndex) {
  if (airQualityIndex <= 3) {
    return AppStrings.lowAirQualityAdvice;
  } else if (airQualityIndex <= 6) {
    return AppStrings.moderateAirQualityAdvice;
  } else if (airQualityIndex <= 9) {
    return AppStrings.highAirQualityAdvice;
  } else {
    return AppStrings.veryHighAirQualityAdvice;
  }
}
