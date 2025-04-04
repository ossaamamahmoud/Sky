import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/weather_model.dart';
import '../../repos/weather_repo/weather_repo.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit({required this.weatherRepo}) : super(WeatherInitial());

  final WeatherRepo weatherRepo;
  getWeather(String city) async {
    emit(WeatherLoading());
    final result = await weatherRepo.getWeather(city);
    return result.fold(
      ifLeft: (failure) {
        emit(WeatherError(failure.errorMessage));
      },
      ifRight: (model) {
        emit(WeatherLoaded(model));
      },
    );
  }
}
