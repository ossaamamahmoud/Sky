import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../core/di/dependency_injection.dart';
import '../cubits/theme_cubit/theme_cubit.dart';
import '../cubits/weather_cubit/weather_cubit.dart';

class AppInitializer {
  static Future<void> init() async {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        (await getTemporaryDirectory()).path,
      ),
    );
    setupDependencies();
  }

  static List<BlocProvider> getBlocProviders() {
    return [
      BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
      BlocProvider<WeatherCubit>(
        create: (_) => WeatherCubit(weatherRepo: getIt.get()),
      ),
    ];
  }
}
