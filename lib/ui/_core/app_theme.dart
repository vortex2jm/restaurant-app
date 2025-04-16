import 'package:flutter/material.dart';
import 'package:tech_taste/ui/_core/colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(AppColors.text),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.primary;
          }
          return AppColors.secondary;
        })
      )
    ),
  );
}
