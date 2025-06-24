import 'package:flutter/material.dart';

class AppTheme {
  static final Color _primaryColor = Color(0xFF4CAF50);
  static final Color _secondaryColor = Color(0xFF388E3C);
  static final Color _accentColor = Color(0xFFFF9800);

  // PUBLIC_INTERFACE
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: _primaryColor,
      secondary: _secondaryColor,
      background: Colors.white,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.black,
      onSurface: Colors.black,
      error: Colors.red,
      onError: Colors.white,
    ),
    primaryColor: _primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: _primaryColor,
      foregroundColor: Colors.white,
      elevation: 1,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _accentColor,
      foregroundColor: Colors.white,
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: _secondaryColor,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
    iconTheme: IconThemeData(color: _secondaryColor),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
          color: _primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
      bodyMedium: TextStyle(
        color: Colors.black87,
        fontSize: 16,
      ),
    ),
    useMaterial3: true,
  );
}
