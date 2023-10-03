import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Azmi Is Testing ",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
