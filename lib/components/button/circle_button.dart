import 'package:flutter/material.dart';

class CircleLogoButton extends StatelessWidget {
  final toGo;
  final logoImage;
  final double? buttonSize;
  final Color? borderColor;

  const CircleLogoButton(
      {required this.toGo,
      required this.logoImage,
      this.buttonSize,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/main");
      },
      child: Container(
        width: buttonSize ?? 45,
        height: buttonSize ?? 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
              Border.all(color: borderColor ?? Colors.transparent, width: 0.5),
        ),
        child: ClipOval(
          child: Image.asset("assets/logos/$logoImage"),
        ),
      ),
    );
  }
}
