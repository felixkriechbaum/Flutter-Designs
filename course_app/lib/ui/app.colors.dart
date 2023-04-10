import 'package:flutter/material.dart';

double tiny = 4;
double small = 8;
double medium = 16;
double large = 32;
double xlarge = 64;

Color primary = Colors.blue;
Color accent = Colors.yellow;

ThemeData themeDataDefault = ThemeData(
    scaffoldBackgroundColor: Colors.grey[50],
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.grey, size: large),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    ));
