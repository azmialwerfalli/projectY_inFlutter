import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 252, 255),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 25),
            // Name of project or Company Name
            Text(
              "Project Y",
              style: GoogleFonts.lato(fontSize: 28, color: Colors.black),
            ),

            // icon

            // title

            //subtitle

            // get started button
          ],
        ),
      ),
    );
  }
}
