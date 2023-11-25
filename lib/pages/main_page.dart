import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sushi_restu/components/buttons.dart';
import 'package:sushi_restu/models/brands.dart';
import 'package:sushi_restu/models/brands.dart';
import 'package:sushi_restu/models/grocery.dart';
import 'package:sushi_restu/theme/colors.dart';

import '../components/brand_title.dart';
import '../components/categories.dart';
import '../components/navigation.dart';
import '../tabs/cart_tab.dart';
import '../tabs/favorite_tab.dart';
import '../tabs/home_tab.dart';
import '../tabs/offers_tab.dart';
import '../tabs/search_tab.dart';
import '../util/my_tabs.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<GButton> myTabs = [
    //home tab
    GButton(
      icon: Icons.home,
      text: 'Home',
    ),
    //search tab
    GButton(
      icon: Icons.search,
      text: 'Search',
    ),
    //favorite tab
    GButton(
      icon: Icons.favorite,
      text: 'Likes',
    ),
    //offers tab
    GButton(
      icon: Icons.discount,
      text: 'Offers',
    ),
    //cart tab
    GButton(
      icon: Icons.shopping_cart_outlined,
      text: 'Cart',
    ),
  ];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  static const List<Widget> _widgetOptions = <Widget>[
    Text("Home"),
    Text("Likes"),
    Text("Search"),
    Text("Profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
            // backgroundColor: blacky251,
            // backgroundColor: blacky251,
            color: blacky70,
            activeColor: blacky30,
            tabBackgroundColor: lightYellowGreen,
            gap: 10,
            // selectedIndex: _selectedIndex,
            // onTabChange: (index) {
            //   setState(() {
            //     Navigator.pushNamed(context, '/mainPage');
            //   });
            // },
            padding: EdgeInsets.all(15),
            tabs: myTabs,
            // tabs: [
            //   GButton(
            //     icon: Icons.home,
            //     text: 'Home',
            //   ),
            //   GButton(
            //     icon: Icons.favorite,
            //     text: 'Likes',
            //   ),
            //   GButton(
            //     icon: Icons.search,
            //     text: 'Search',
            //   ),
            //   GButton(
            //     icon: Icons.settings,
            //     text: 'Profile',
            //   ),
            // ],
          ),
        ),
        backgroundColor: blacky251,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: blacky30,
          ),
          title: Text('SMOKE',
              style: TextStyle(
                color: blacky30,
              )),
        ),
      ),
    );
  }
}
