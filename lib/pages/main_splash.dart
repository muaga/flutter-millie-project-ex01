import 'package:flutter/material.dart';
import 'package:untitled/themes/colors.dart';

class MainSplashPage extends StatelessWidget {
  const MainSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset("assets/logos/millie_logo_pupple.png", width: 140),
      ),
    );
  }
}
