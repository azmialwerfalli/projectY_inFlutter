import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restu/components/buttons.dart';
import 'package:sushi_restu/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text('Hunger', style: TextStyle(color: Colors.grey[900])),
      ),
      body: Column(
        children: [
          //profile
          // Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 25),
          //   child: Row(children: [
          //     Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         //promo Message
          //         Text('Deliveries To'),
          //         const SizedBox(height: 10),

          //         // make it Row
          //         Text(
          //           'Raed Roxy',
          //           style: GoogleFonts.manrope(
          //             fontSize: 15,
          //             color: Color.fromARGB(255, 10, 8, 18),
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //         Icon(Icons.arrow_downward,
          //             color: Color.fromARGB(255, 0, 0, 0))
          //         // redeme Button
          //         // MyButton(text: "Redeem", onTap: () {})
          //       ],
          //     )
          //     //image
          //   ]),
          // ),
          const SizedBox(height: 20),
          //promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(children: [
              Column(
                children: [
                  //promo Message
                  Text('Get 32% off your first 5 Deliveries'),
                  const SizedBox(height: 20),
                  // redeme Button
                  MyButton(text: "Redeem", onTap: () {})
                ],
              )
              //image
            ]),
          )
          //search bar
          //menu list
          //top product
        ],
      ),
    );
  }
}
