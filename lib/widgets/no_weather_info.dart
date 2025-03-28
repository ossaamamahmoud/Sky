import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_strings.dart';
import '../core/constants/app_styles/app_styles.dart';
import '../screens/search_screen.dart';
import 'custom_app_bar.dart';
import 'custom_elevated_button.dart';

class SkyNoWeatherInfo extends StatelessWidget {
  const SkyNoWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context),
      body: Center(
        child: Column(
          spacing: 5.h,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppStrings.homeScreenFirstText,
              style: TextStyles.font20w700,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Text(
                AppStrings.homeScreenSecondText,
                style: TextStyles.font12w500,
                textAlign: TextAlign.center,
              ),
            ),
            CustomElevatedButton(
              buttonText: AppStrings.homeScreenButtonText,
              onPressed: () => Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const SearchScreen(), // No BlocProvider needed
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
