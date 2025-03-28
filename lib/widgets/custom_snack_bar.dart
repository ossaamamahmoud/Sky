import 'package:flutter/material.dart';

import '../core/constants/app_styles/app_styles.dart';

SnackBar customSnackBar(String msg) {
  return SnackBar(
    content: Text(
      msg,
      textAlign: TextAlign.center,
      style: TextStyles.font15w700.copyWith(
        color: Colors.white,
      ),
    ),
    backgroundColor: Colors.redAccent,
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
  );
}
