import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restu/models/brands.dart';
import '../theme/colors.dart';

class Categories extends StatelessWidget {
  final Brands brand;
  const Categories({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: blacky255,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25.0),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // image
          Image.asset(
            brand.imagePath,
            height: 60,
          ),
          //text
          Text(
            brand.name,
            style: GoogleFonts.syne(fontSize: 20),
          ),

        ],
      ),
    );
  }
}
