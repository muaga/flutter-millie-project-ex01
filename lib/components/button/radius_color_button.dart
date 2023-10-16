import 'package:flutter/material.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

class RadiusColorButton extends StatelessWidget {
  final buttonText;
  final toGo;
  final Color? textColor;
  final Color? gradientStartColor;
  final Color? gradientEndColor;

  const RadiusColorButton(
      {required this.buttonText,
      required this.toGo,
      this.textColor,
      this.gradientStartColor,
      this.gradientEndColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            gradientStartColor ?? kPrimaryColor,
            gradientEndColor ?? kPrimaryColor
          ],
        ),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, "${toGo}");
        },
        child: Text(
          "${buttonText}",
          style: TextStyle(
              fontSize: font_medium,
              color: textColor ?? kBlack,
              height: 1.2), // 텍스트 세로 가운데 정렬
        ),
      ),
    );
  }
}
