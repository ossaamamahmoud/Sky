import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky/cubits/weather_cubit/weather_cubit.dart';
import 'package:sky/screens/home_screen.dart';
import 'package:sky/widgets/custom_app_bar.dart';
import 'package:sky/widgets/custom_elevated_button.dart';
import 'package:sky/widgets/custom_snack_bar.dart';

import '../core/constants/app_colors/app_theme_colors.dart';
import '../core/constants/app_strings.dart';
import '../core/constants/app_styles/app_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        isNotSearch: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(12.r),
        child: Column(
          spacing: 10.h,
          children: [
            TextField(
              onTapOutside: (event) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              controller: _textEditingController,
              style: TextStyles.font16w700.copyWith(
                color: AppColors.tffcontentColor,
              ),
              cursorColor: AppColors.tffcontentColor,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.location_on_outlined,
                  color: AppColors.tffcontentColor,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                filled: true,
                fillColor: AppColors.tffFilledColor,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                hintText: AppStrings.searchScreenTFFieldHintText,
                hintStyle: TextStyles.font15w700.copyWith(
                  color: AppColors.tffcontentColor,
                ),
              ),
            ),
            CustomElevatedButton(
              buttonText: AppStrings.searchScreenButtonText,
              onPressed: () {
                if (_textEditingController.text.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    customSnackBar(
                      AppStrings.searchScreenValidatorSnackBarText,
                    ),
                  );
                } else {
                  context
                      .read<WeatherCubit>()
                      .getWeather(_textEditingController.text);

                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const HomeScreen(), // No need for BlocProvider
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                              FadeTransition(
                        opacity: animation,
                        child: child,
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
