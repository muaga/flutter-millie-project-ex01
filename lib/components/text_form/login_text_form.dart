import 'package:flutter/material.dart';
import 'package:untitled/components/text_form_field/Out_line_text_form_field.dart';
import 'package:untitled/themes/sizes.dart';

class LoginTextForm extends StatelessWidget {
  const LoginTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      OutLineTextFormField(hintText: "휴대폰 번호"),
      SizedBox(height: gap_medium),
      OutLineTextFormField(hintText: "비밀번호", isPassword: true),
      SizedBox(height: gap_xlarge),
      ElevatedButton(onPressed: () {}, child: Text("로그인"))
    ]);
  }
}
