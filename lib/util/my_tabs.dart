import 'package:flutter/material.dart';

import '../theme/colors.dart';

class MyTabs extends StatelessWidget {
  final String iconPath;
  const MyTabs({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: blacky208, borderRadius: BorderRadius.circular(12)),
          child: Image.asset(
            iconPath,
            color: blacky30,
          )),
    );
  }
}
