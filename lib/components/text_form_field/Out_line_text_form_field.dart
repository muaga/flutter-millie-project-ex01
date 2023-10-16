import 'package:flutter/material.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

class OutLineTextFormField extends StatelessWidget {
  final hintText;
  final bool isPassword;

  const OutLineTextFormField({required this.hintText, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: TextStyle(color: kBlack, fontSize: font_small),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kLightGray),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kGray, width: 1.2)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kBlack, width: 1.2)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kGray, width: 1.2)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kGray, width: 1.2)),
      ),
    );
  }
}
