import 'package:flutter/material.dart';
import 'package:h_m/utils/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    splashColor: MyColors.appSecondary,
    splashFactory: InkSplash.splashFactory,
    checkboxTheme: const CheckboxThemeData(
        // checkColor: MaterialStateColor.resolveWith((states) {
        //   if (states.contains(MaterialState.selected)) {
        //     return MyColors.appPrimary;
        //   }
        //   return Colors.grey;
        // }),
        ),
    fontFamily: "Inter",
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    dialogBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
  );
}
