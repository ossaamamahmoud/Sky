import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sky/core/networking/api_service.dart';
import 'package:sky/core/networking/dio_factory.dart';
import 'package:sky/cubits/weather_cubit/weather_cubit.dart';
import 'package:sky/repos/weather_repo/weather_repo.dart';
import 'package:sky/repos/weather_repo/weather_repo_impl.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Register a singleton for Dio instance
  getIt.registerLazySingleton<Dio>(() => DioFactory().dio);

  // Register a singleton for ApiService
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio: getIt<Dio>()));

  // Register a singleton for WeatherRepo
  getIt.registerLazySingleton<WeatherRepo>(
      () => WeatherRepoImpl(apiService: getIt<ApiService>()));

  // Register WeatherCubit as factory (new instance every time it's requested)
  getIt.registerFactory(() => WeatherCubit(weatherRepo: getIt<WeatherRepo>()));
}
