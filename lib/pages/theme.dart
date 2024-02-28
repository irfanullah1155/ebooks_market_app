
import 'package:flutter/material.dart';

import 'color.dart';

var lightTheme = ThemeData(

    useMaterial3: true,

    // Color Style
    colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: primaryColor,
        onPrimary: secondaryColor,
        secondary: secondaryColor,
        onSecondary: backgroundColor,
        error: Colors.red,
        onError: fontColor,
        background: backgroundColor,
        onBackground:fontColor ,
        surface: backgroundColor,
        onSurface: fontColor),


    // Text Style
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 30,
          fontWeight: FontWeight.w600

      ),

      headlineMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600

      ),

      bodyLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w600
      ),
      bodyMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 15,
          fontWeight: FontWeight.w600

      ),
      bodySmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight: FontWeight.w600

      ),
      labelLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w400

      ),
      labelMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 15,
          fontWeight: FontWeight.w400

      ),
      labelSmall: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight: FontWeight.w400

      ),
    )
);