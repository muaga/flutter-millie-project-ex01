import 'package:flutter/material.dart';
import 'package:untitled/pages/main_login_01.dart';
import 'package:untitled/pages/main_login_02.dart';
import 'package:untitled/pages/main_splash.dart';
import 'package:untitled/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/login01",
      routes: {
        "/main": (context) => MainSplashPage(),
        "/login01": (context) => MainLogin01Page(),
        "/login02": (context) => MainLogin02Page(),
      },
    );
  }
}
