import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restu/models/grocery.dart';
import 'package:sushi_restu/theme/colors.dart';

class BrandTitle extends StatelessWidget {
  final Grocery brand;
  final void Function()? onTab
  const BrandTitle({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ,
      child: Container(
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
              height: 140,
            ),
            //text
            Text(
              brand.name,
              style: GoogleFonts.syne(fontSize: 20),
            ),
            //price + rating
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //prcie
                  Text(
                    "\$" + brand.price,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: blacky108),
                  ),
                  //rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        brand.rating,
                        style: TextStyle(color: blacky108),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
