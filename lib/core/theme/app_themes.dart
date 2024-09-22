import 'package:flutter/material.dart';

class AppThemes {
  static final light = ThemeData.light().copyWith(
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      elevation: 0,
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      color: Colors.grey[900],
      elevation: 0,
    ),
  );
}
