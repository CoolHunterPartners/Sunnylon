import 'package:flutter/material.dart';

class SunnylonColors {
// Brand
static const primary = Color(0xFFA04ABE); // Primary
static const secondary = Color(0xFF923EB0); // Secondary
static const variant1 = Color(0xFF82389D); // Variant 1 (error states)
static const variant3 = Color(0xFF73318A); // Variant 3
static const variant3Dark = Color(0xFF632A77); // Variant 3 (dark)
static const variant4 = Color(0xFF542465); // Variant 4

static const white = Color(0xFFFFFFFF);
static const black = Color(0xFF000000);

// Semantic
static const success = Color(0xFF72C122); // Success
static const inProgress = Color(0xFF0286D8); // In progress
static const warning = Color(0xFFF2DF10); // Warning
static const error = Color(0xFFD11D29); // Error

// Grayscale / UI
static const titleActive = Color(0xFF616161); // Title-Active
static const body = Color(0xFF757575); // Body
static const label = Color(0xFF9E9E9E); // Label
static const placeholder = Color(0xFFBDBDBD); // Placeholder
static const line = Color(0xFFEDEDED); // Line
static const inputBackground = Color(0xFFEEEEEE); // Input Background
static const elementBackground = Color(0xFFF5F5F5); // Background
static const offWhite = Color(0xFFFAFAFA); // Off-white
}

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: 'Roboto',
  primaryColor: SunnylonColors.primary,
  scaffoldBackgroundColor: SunnylonColors.white,
  colorScheme: const ColorScheme.light(
    primary: SunnylonColors.primary,
    secondary: SunnylonColors.secondary,
    error: SunnylonColors.error,
    surface: SunnylonColors.white,
    onPrimary: SunnylonColors.white,
    onSecondary: SunnylonColors.white,
    onSurface: SunnylonColors.titleActive,
    onError: SunnylonColors.white,
    background: SunnylonColors.offWhite,
    onBackground: SunnylonColors.body,
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 96, fontWeight: FontWeight.w300, color: SunnylonColors.titleActive),
    displayMedium: TextStyle(fontSize: 60, fontWeight: FontWeight.w400, color: SunnylonColors.titleActive),
    displaySmall: TextStyle(fontSize: 48, fontWeight: FontWeight.w400, color: SunnylonColors.titleActive),
    headlineMedium: TextStyle(fontSize: 34, fontWeight: FontWeight.w400, color: SunnylonColors.titleActive),
    headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: SunnylonColors.titleActive),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: SunnylonColors.titleActive),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: SunnylonColors.body),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: SunnylonColors.body),
    labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: SunnylonColors.white),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: SunnylonColors.label),
    labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: SunnylonColors.label),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: SunnylonColors.inputBackground,
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: SunnylonColors.line),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: SunnylonColors.line),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: SunnylonColors.primary, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: SunnylonColors.error),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: SunnylonColors.error, width: 2),
    ),
    labelStyle: const TextStyle(color: SunnylonColors.label),
    hintStyle: const TextStyle(color: SunnylonColors.placeholder),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: SunnylonColors.primary,
      foregroundColor: SunnylonColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: SunnylonColors.primary,
      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    ),
  ),
  cardTheme: CardTheme(
    elevation: 2,
    color: SunnylonColors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(color: SunnylonColors.line),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  ),
);
