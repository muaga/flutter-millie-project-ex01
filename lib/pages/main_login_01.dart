import 'package:flutter/material.dart';
import 'package:untitled/components/button/hyper_link_and_text.dart';
import 'package:untitled/components/button/radius_color_button.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

class MainLogin01Page extends StatelessWidget {
  const MainLogin01Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/library.jpg"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 65, vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(height: gap_large),
                Center(
                    child: Image.asset("assets/logos/millie_logo_yellow.png",
                        height: 50)),
              ]),
              Column(children: [
                RadiusColorButton(buttonText: "첫 달 무료로 시작하기", toGo: "/main"),
                SizedBox(height: gap_xlarge),
                HyperLinkAndText(
                    text: "이미 밀리 회원이라면?",
                    hyperLinkText: "로그인",
                    hyperLinkColor: kWhite,
                    toGo: "/login02",
                    fontWeight: FontWeight.w700),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
