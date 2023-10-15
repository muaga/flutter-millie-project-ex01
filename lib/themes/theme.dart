import 'package:flutter/material.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

ThemeData theme() {
  return ThemeData(
    /// appbar
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    ),

    /// elevated 버튼
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: font_medium),
        backgroundColor: kPrimaryColor,
        foregroundColor: kBlack,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(double.infinity, 60),
      ),
    ),
  );
}
