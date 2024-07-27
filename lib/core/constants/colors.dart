import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFd1bfa6);
  static const Color secondary = Color(0xFF939081);
  static const Color accent = Color(0xFF040000);

  // Text colors
  static const Color textPrimary = Color(0xFF292929);
  static const Color textSecondary = Color(0xFFE4E4CD);

  // Background colors
  static const Color light = Color(0xFFE4E4CD);
  static const Color dark = Color(0xFF292929);
  static const Color primaryBackground = Color(0xFFE4E4CD);

  // Background Container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = AppColors.primary.withOpacity(0.1);

  // Button colors
  static const Color buttonPrimary = Color(0xFFd1bfa6);
  static const Color buttonSecondary = Color(0xFF939081);

  // Border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF292929);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
