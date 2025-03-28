import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky/screens/weather_info_screen.dart';
import 'package:sky/widgets/no_weather_info.dart';
import 'package:sky/widgets/weather_error_widget.dart';
import 'package:sky/widgets/weather_loading_widget.dart';

import '../cubits/weather_cubit/weather_cubit.dart';

class WeatherStateHandler extends StatelessWidget {
  const WeatherStateHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return switch (state) {
          WeatherLoading() => const WeatherLoadingWidget(),
          WeatherLoaded() => WeatherInfoScreen(
              weatherModel: state.weatherModel,
            ),
          WeatherError() => WeatherErrorWidget(
              state: state,
            ),
          _ => const SkyNoWeatherInfo()
        };
      },
    );
  }
}
