import 'package:flutter/material.dart';
import 'package:untitled/components/button/circle_button.dart';
import 'package:untitled/themes/colors.dart';

class SimpleLoginList extends StatelessWidget {
  const SimpleLoginList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        CircleLogoButton(logoImage: "kakao_logo.png", toGo: "/main"),
        CircleLogoButton(logoImage: "naver_logo.png", toGo: "/main"),
        CircleLogoButton(logoImage: "facebook_logo.png", toGo: "/main"),
        CircleLogoButton(logoImage: "apple_logo.png", toGo: "/main"),
        CircleLogoButton(
            logoImage: "google_logo.png",
            toGo: "/main",
            borderColor: kLightGray),
      ]),
    );
  }
}
