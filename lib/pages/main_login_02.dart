import 'package:flutter/material.dart';
import 'package:untitled/components/button/hyper_link.dart';
import 'package:untitled/components/form/simple_login_list.dart';
import 'package:untitled/components/text_form/login_text_form.dart';
import 'package:untitled/themes/colors.dart';
import 'package:untitled/themes/sizes.dart';

class MainLogin02Page extends StatelessWidget {
  const MainLogin02Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: kBlack)),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(gap_main),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("독서와 무제한 친해지리",
                style: TextStyle(
                    fontSize: font_xlarge,
                    fontWeight: FontWeight.bold,
                    color: kBlack)),
            SizedBox(height: gap_small),
            Text("즐거운 독서 생활로 당신의 일상을 1밀리+",
                style: TextStyle(fontSize: font_main, color: kGray)),
            SizedBox(height: gap_large),
            LoginTextForm(),
            SizedBox(height: gap_large),
            _buildAccounManagement(),
            SizedBox(height: gap_xlarge),
            _buildAnd(),
            SizedBox(height: gap_large),
            SimpleLoginList(),
          ],
        ),
      ),
    );
  }

  Row _buildAccounManagement() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HyperLink(hyperLinkText: "회원가입", toGo: "/main", fontSize: font_main),
        _buildColumnLine(),
        HyperLink(hyperLinkText: "비밀번호 찾기", toGo: "/main", fontSize: font_main),
        _buildColumnLine(),
        HyperLink(
            hyperLinkText: "기업회원 로그인", toGo: "/main", fontSize: font_main),
      ],
    );
  }

  Row _buildAnd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: _buildRowLine()), // Line 화면 가로에 맞춰 width 자동 지정
        SizedBox(width: gap_medium),
        _buildLineText(),
        SizedBox(width: gap_medium),
        Expanded(child: _buildRowLine()),
      ],
    );
  }

  Container _buildColumnLine() {
    return Container(
      height: 15,
      width: 1.0,
      color: kGray,
    );
  }

  Text _buildLineText() {
    return Text("또는", style: TextStyle(fontSize: font_xsmall, color: kGray));
  }

  Container _buildRowLine() {
    return Container(
      height: 1.0,
      color: kGray,
    );
  }
}
