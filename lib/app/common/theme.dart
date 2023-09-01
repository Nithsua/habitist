import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppTheme {
  final primaryColor = Colors.black;

  final scaffoldBackgroundColor = Colors.white;

  final appBarTheme = const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  );

  final bottomNavigationBarTheme = const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    selectedIconTheme: IconThemeData(color: Colors.white),
  );

  AppTheme._() {
    theme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: appBarTheme,
      textTheme: GoogleFonts.nunitoSansTextTheme(),
      bottomNavigationBarTheme: bottomNavigationBarTheme,
    );
  }

  late final ThemeData theme;
  // late final ThemeData darkTheme;

  static final _appTheme = AppTheme._();
  static AppTheme get instance => _appTheme;
}
