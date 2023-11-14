import 'package:flutter/material.dart';
import 'package:sushi_restu/theme/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: blacky255,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: blacky30, fontSize: 22),
            ),
            const SizedBox(width: 30),
            Icon(Icons.arrow_forward, color: blacky30)
          ],
        ),
      ),
    );
  }
}
