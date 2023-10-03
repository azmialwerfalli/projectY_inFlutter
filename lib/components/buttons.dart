import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 146, 77, 179),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text

            Text(
              text,
              style: TextStyle(
                  color: Color.fromARGB(255, 250, 252, 255), fontSize: 22),
            ),
            const SizedBox(width: 30),

            // icon
            Icon(Icons.arrow_forward, color: Color.fromARGB(255, 250, 252, 255))
          ],
        ),
      ),
    );
  }
}
