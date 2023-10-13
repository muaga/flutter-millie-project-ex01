import 'package:flutter/material.dart';
import 'package:untitled/pages/logo_page.dart';
import 'package:untitled/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/logo",
      routes: {
        "/logo": (context) => LogoPage(),
        "/start": (context) => StartPage(),
      },
    );
  }
}
