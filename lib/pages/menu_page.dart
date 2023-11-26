import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_restu/components/buttons.dart';
import 'package:sushi_restu/models/grocery.dart';
import 'package:sushi_restu/theme/colors.dart';

import '../components/brand_title.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //grocery Menu
  List groceryMenu = [
    //milk
    Grocery(
        name: "Milk",
        price: "45",
        imagePath: "lib/images/milk-box.png",
        rating: "4.6"),

    //tuna
    Grocery(
        name: "Tuna",
        price: "67",
        imagePath: "lib/images/canned-food.png",
        rating: "4.2"),
    //milk two
    Grocery(
        name: "Milky",
        price: "64",
        imagePath: "lib/images/milk.png",
        rating: "4.3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blacky251,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: blacky30,
        ),
        title: Text('Grap',
            style: TextStyle(
              color: blacky30,
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          // const SizedBox(height: 20),
          //promo banner
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/dar.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                ),
                color: blacky30,
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //promo Message
                      Text(
                        'Get 32% off your first 3 Deliveries',
                        style: GoogleFonts.syne(
                          fontSize: 20,
                          color: blacky255,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // redeme Button
                      MyButton(
                          text: "Redeem",
                          onTap: () {
                            Navigator.pushNamed(context, '/mainPage');
                          })
                    ],
                  ),
                  //image
                  MediaQuery(
                    data: MediaQuery.of(context).copyWith(invertColors: true),
                    child: Image.asset(
                      'lib/images/redeem-points.png',
                      height: 70,
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 15),
          //search bar
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: TextField(
              decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black38),
                  //     borderRadius: BorderRadius.circular(40)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: majorelleBlue),
                      borderRadius: BorderRadius.circular(40)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: blacky30),
                      borderRadius: BorderRadius.circular(40)),
                  hintText: "Search Here..."),
            ),
          ),
          const SizedBox(height: 15),

          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Grocery Menu",
              style: GoogleFonts.syne(
                  fontWeight: FontWeight.bold,
                  color: blacky30,
                  // color: Colors.deepPurple,
                  fontSize: 24),
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: groceryMenu.length,
              itemBuilder: (context, index) => BrandTitle(
                brand: groceryMenu[index],
              ),
            ),
          ),
          const SizedBox(height: 10),

          //top product
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Top Sales Products",
              style: GoogleFonts.syne(
                  fontWeight: FontWeight.bold,
                  color: blacky30,
                  // color: Colors.deepPurple,
                  fontSize: 24),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/images/choco.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstATop),
                ),
                color: lightYellowGreen,
                borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //image
                    // Image.asset(
                    //   "lib/images/redeem-points.png",
                    //   height: 60,
                    // ),
                    const SizedBox(height: 120),

                    // name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //name
                        Text(
                          "Choclate",
                          style: GoogleFonts.syne(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                        // const SizedBox(height: 10),
                        //price
                        Text(
                          "\$24.00",
                          style: TextStyle(color: blacky30, fontSize: 30),
                        )
                      ],
                    ),
                  ],
                ),

                //heart
                Icon(Icons.favorite_outline, color: blacky30, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
