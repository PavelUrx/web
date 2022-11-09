import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTheme {
  DefaultTheme();

  ThemeData getAppTheme() {
    return ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 32, 49),
        appBarTheme: AppBarTheme(
            backgroundColor: const Color.fromARGB(127, 40, 47, 68),
            foregroundColor: const Color.fromARGB(255, 230, 175, 46),
            toolbarHeight: 40,
            toolbarTextStyle: getTitleStyle()),
        colorScheme: const ColorScheme.dark(
          background: Color.fromARGB(255, 40, 47, 68),
          primary: Color.fromARGB(127, 40, 47, 68),
          onPrimary: Color.fromARGB(255, 40, 47, 68),
          secondary: Color.fromARGB(255, 230, 175, 46),
          onSecondary: Color.fromARGB(255, 230, 175, 46),
        ),
        fontFamily: GoogleFonts.lobster().fontFamily);
  }

  TextStyle getTitleStyle() {
    return TextStyle(
      fontFamily: GoogleFonts.lobster().fontFamily,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 230, 175, 46),
    );
  }

  TextStyle getParagraphStyle() {
    return TextStyle(
      fontFamily: GoogleFonts.lobster().fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    );
  }

  BoxDecoration getInfoBoxStyle() {
    return BoxDecoration(
        color: const Color.fromARGB(255, 40, 47, 68),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: const Color.fromARGB(63, 245, 208, 97), width: 5));
  }
}
