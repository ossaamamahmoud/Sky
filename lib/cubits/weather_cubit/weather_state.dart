part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherLoaded extends WeatherState {
  final WeatherModel weatherModel;
  WeatherLoaded(this.weatherModel);
}

final class WeatherError extends WeatherState {
  final String errorMessage;
  WeatherError(this.errorMessage);
}
