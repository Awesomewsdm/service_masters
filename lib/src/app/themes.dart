import 'package:flutter/material.dart';
import 'package:home_service_app/src/app/colors.dart';

ThemeData customTheme = ThemeData(
  appBarTheme: const AppBarTheme(backgroundColor: tPrimaryColor),
  primaryColor: Colors.blue,
  hintColor: Colors.orange,
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
  ),
);
