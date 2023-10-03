import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restu/components/buttons.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 252, 255),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 25),
            // Name of project or Company Name
            // Text(
            //   "Project Y",
            //   style: GoogleFonts.poppins(
            //       fontSize: 28, color: Color.fromARGB(255, 10, 8, 18)),
            // ),
            // const SizedBox(height: 25),
            // icon
            Padding(
              padding: const EdgeInsets.all(90.0),
              child: Image.asset(
                'lib/images/image.png',
                height: 129,
                width: 129,
              ),
            ),
            const SizedBox(height: 25),

            // title
            Text(
              'Your Wholesale shopping delivered to your home',
              style: GoogleFonts.manrope(
                fontSize: 44,
                color: Color.fromARGB(255, 10, 8, 18),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            //subtitle
            Text(
              'Theres something for everyone to enjoy in our shop',
              style: GoogleFonts.manrope(
                fontSize: 22,
                color: Color.fromARGB(255, 10, 8, 18),
                height: 2,
              ),
            ),
            // const SizedBox(height: 50),

            // get started button
            MyButton(text: "Get Started")
          ],
        ),
      ),
    );
  }
}
