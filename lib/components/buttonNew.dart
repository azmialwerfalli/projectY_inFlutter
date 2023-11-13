import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String text;
  const MyButtons({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 145, 182, 238),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Color.fromARGB(255, 250, 252, 255), fontSize: 22),
          ),
          const SizedBox(width: 30),
          Icon(Icons.arrow_forward, color: Color.fromARGB(255, 250, 252, 255))
        ],
      ),
    );
  }
}
