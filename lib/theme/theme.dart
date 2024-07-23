import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme getTextTheme(BuildContext context) =>
      Theme.of(context).textTheme;

  static ThemeData lightTheme = ThemeData(
    textTheme: lightTextTheme,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.light,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: darkTextTheme,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 183, 12, 0),
      foregroundColor: Colors.white,
    ),
  );

  static TextTheme lightTextTheme = const TextTheme(
      displayLarge: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      displayMedium: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      displaySmall: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      headlineLarge: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      headlineMedium: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      headlineSmall: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      titleLarge: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      titleMedium: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      titleSmall: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 94, 255)),
      bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black),
      bodySmall: TextStyle(fontSize: 12.0, color: Colors.black),
      labelLarge:
          TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 0, 94, 255)),
      labelMedium:
          TextStyle(fontSize: 12.0, color: Color.fromARGB(255, 0, 94, 255)),
      labelSmall: TextStyle(
        fontSize: 10.0,
        color: testColor,
      ));

  static TextTheme darkTextTheme = const TextTheme(
    displayLarge: TextStyle(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    displayMedium: TextStyle(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    displaySmall: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    headlineLarge: TextStyle(
        fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    headlineMedium: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    headlineSmall: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    titleLarge: TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    titleMedium: TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    titleSmall: TextStyle(
        fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.lightBlue),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
    bodySmall: TextStyle(fontSize: 12.0, color: Colors.white),
    labelLarge: TextStyle(fontSize: 14.0, color: Colors.lightBlue),
    labelMedium: TextStyle(fontSize: 12.0, color: Colors.lightBlue),
    labelSmall: TextStyle(fontSize: 10.0, color: Colors.lightBlue),
  );

  static const Color testColor = Color.fromARGB(255, 0, 255, 136);
}
