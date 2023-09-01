import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppTheme {
  static const primaryColor = Colors.black;

  static const scaffoldBackgroundColor = Colors.white;

  static const systemUIOverlayStyle = SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
  );

  static const appBarTheme = AppBarTheme(
    systemOverlayStyle: systemUIOverlayStyle,
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  );

  static const bottomNavigationBarTheme = BottomNavigationBarThemeData(
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
