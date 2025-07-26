import "package:eglise_saint_martin_le_beau/style/style.dart";
import "package:flutter/material.dart";

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    cardColor: Colors.white,
    // Define the default brightness and colors.
    // colorScheme: ColorScheme.fromSeed(
    //   // seedColor: SatStyle.softDarkBlueColor,
    //   // seedColor: SatStyle.redColor,
    //   // seedColor: SatStyle.lightBlueColor,
    //   // ···
    //   brightness: Brightness.light,
    //
    // ),
    colorScheme: ColorScheme(
      brightness: Brightness.light,

      primary: SatStyle.softDarkBlueColor,
      onPrimary: Colors.white,
      primaryContainer: SatStyle.softLightBlueColor,
      onPrimaryContainer: SatStyle.darkBlueColor,

      secondary: SatStyle.lightBlueColor,
      onSecondary: Colors.white,

      tertiary: SatStyle.redColor,
      onTertiary: Colors.white,

      error: SatStyle.redColor,
      onError: Colors.white,

      // surface: SatStyle.lightBlueColor,
      // onSurface: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      color: SatStyle.lightBlueColor,
      centerTitle: false,

      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardThemeData(color: Colors.white),
    bottomAppBarTheme: BottomAppBarTheme(color: SatStyle.lightBlueColor),
    // buttonTheme: ButtonThemeData(
    //   buttonColor: SatStyle.softDarkBlueColor,
    // ),
    // cardTheme: CardThemeData(
    //   color: Colors.white,
    //   elevation: 2,
    //   margin: EdgeInsets.all(4),
    // ),
    // listTileTheme: ListTileThemeData(
    //   textColor: Colors.black54,
    //   tileColor: Colors.white,
    // ),

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      displayLarge: const TextStyle(

        fontWeight: FontWeight.bold,
        fontSize: 28,),
      // ···
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        // color: SatStyle.redColor,
      ),
      titleLarge: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
      bodyMedium: TextStyle(fontSize: 16, height: 1.5),
      displaySmall: TextStyle(),
      bodyLarge: TextStyle(),
      bodySmall: TextStyle(),
      displayMedium: TextStyle(),
      headlineMedium: TextStyle(),
      headlineSmall: TextStyle(),
      labelLarge: TextStyle(),
      labelMedium: TextStyle(
        fontSize: 18,
        fontStyle: FontStyle.italic,
        color: Colors.grey,
      ),
      labelSmall: TextStyle(),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(),
    ),
  );
}
