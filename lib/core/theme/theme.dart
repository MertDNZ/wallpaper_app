import 'package:flutter/material.dart';
import 'package:wallpaper_app/core/constants/colors.dart';
import 'package:wallpaper_app/core/theme/widget_themes/elevated_button.dart';
import 'package:wallpaper_app/core/theme/widget_themes/text_theme.dart';

import 'widget_themes/appbar_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      textTheme: AppTextTheme.lightTextTheme,
      scaffoldBackgroundColor: AppColors.light,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: AppColors.primary,
      textTheme: AppTextTheme.lightTextTheme,
      scaffoldBackgroundColor: AppColors.dark,
      appBarTheme: CustomAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme);
}
