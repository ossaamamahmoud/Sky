import 'package:dart_either/src/dart_either.dart';
import 'package:dio/dio.dart';
import 'package:sky/core/networking/api_constants.dart';
import 'package:sky/core/networking/api_error_handler.dart';
import 'package:sky/models/weather_model.dart';
import 'package:sky/repos/weather_repo/weather_repo.dart';

import '../../core/networking/api_service.dart';

class WeatherRepoImpl extends WeatherRepo {
  final ApiService apiService;

  WeatherRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, WeatherModel>> getWeather(String city) async {
    try {
      final response = await apiService.get(
        endpoint: ApiConstants.forecast, // e.g., 'forecast.json'
        queryParameters: {
          'key': ApiConstants.apiKey, // Your API key
          'q': city,
          'days': 3,
          'aqi': 'yes',
        },
      );
      final weatherModel = WeatherModel.fromJson(response);
      print(weatherModel.forecast?.forecastday?.first.day?.avgtempC);
      return Right(weatherModel);
    } catch (error) {
      // Handle error using your error handler
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(
        errorMessage: error.toString(),
      ));
    }
  }
}
