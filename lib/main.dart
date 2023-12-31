import 'package:flutter/material.dart';
import 'package:sushi_restu/pages/main_page.dart';
import 'package:sushi_restu/pages/menu_page.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        '/introPage': (context) => const IntroPage(),
        '/menuPage': (context) => const MenuPage(),
        '/mainPage': (context) => const MainPage(),
      },
    );
  }
}
