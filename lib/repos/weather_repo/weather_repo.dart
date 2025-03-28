import 'package:dart_either/dart_either.dart';
import 'package:sky/core/networking/api_error_handler.dart';

import '../../models/weather_model.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherModel>> getWeather(String city);
}
