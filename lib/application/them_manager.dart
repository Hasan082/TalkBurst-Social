import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData getAppTheme() {
    return ThemeData(
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: const Color.fromRGBO(29, 41, 57, 1),
          suffixIconColor: const Color.fromRGBO(29, 41, 57, 1),
          fillColor: Colors.white,
          hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 2,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            textStyle: const TextStyle(fontSize: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            titleTextStyle:
                TextStyle(color: Color.fromRGBO(29, 41, 57, 1), fontSize: 22)),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(16, 24, 40, 1),
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            fontFamily: 'lobster',
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(16, 24, 40, 1),
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(16, 24, 40, 1),
          ),
          titleSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(16, 24, 40, 1),
          ),
        ));
  }
}
