import 'package:flutter/material.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

class HyperLink extends StatelessWidget {
  final hyperLinkText;
  final Color? hyperLinkColor;
  final toGo;
  final FontWeight? fontWeight;
  final double? fontSize;

  const HyperLink(
      {required this.hyperLinkText,
      required this.toGo,
      this.hyperLinkColor,
      this.fontWeight,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "${toGo}");
      },
      child: Text("${hyperLinkText}",
          style: TextStyle(
              fontSize: fontSize ?? font_small,
              fontWeight: fontWeight,
              color: hyperLinkColor ?? kGray)),
    );
  }
}
