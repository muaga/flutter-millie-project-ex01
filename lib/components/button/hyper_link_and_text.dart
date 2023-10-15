import 'package:flutter/material.dart';
import 'package:untitled/components/button/hyper_link.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

class HyperLinkAndText extends StatelessWidget {
  final hyperLinkText;
  final text;
  final Color? hyperLinkColor;
  final Color? textcolor;
  final toGo;
  final double? fontSize;
  final FontWeight? fontWeight;

  const HyperLinkAndText(
      {required this.hyperLinkText,
      required this.text,
      required this.toGo,
      this.hyperLinkColor,
      this.fontWeight,
      this.textcolor,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${text}",
            style: TextStyle(fontSize: font_small, color: textcolor ?? kWhite)),
        SizedBox(width: gap_small),
        HyperLink(
            hyperLinkText: "${hyperLinkText}",
            toGo: "${toGo}",
            fontWeight: fontWeight,
            hyperLinkColor: hyperLinkColor,
            fontSize: fontSize),
      ],
    );
  }
}
