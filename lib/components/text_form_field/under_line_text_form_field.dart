import 'package:flutter/material.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

class UnderLineTextFormField extends StatelessWidget {
  final hintText;
  final bool isPassword;

  const UnderLineTextFormField(
      {required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: TextStyle(color: kWhite, fontSize: font_small),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kGray),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kWhite, width: 1.2)),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kWhite, width: 1.2)),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kWhite, width: 1.2)),
        focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kWhite, width: 1.2)),
      ),
    );
  }
}
