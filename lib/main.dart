import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky/screens/home_screen.dart';

import 'app_initializer.dart';
import 'core/constants/app_strings.dart';
import 'cubits/theme_cubit/theme_cubit.dart';
import 'cubits/theme_cubit/theme_state.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.init();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const SkyApp());
}

class SkyApp extends StatelessWidget {
  const SkyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: AppInitializer.getBlocProviders(),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppStrings.appBarTitle,
              theme: state.themeData,
              home: const HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}
