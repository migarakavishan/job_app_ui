import 'package:flutter/material.dart';

class GreetingsText extends StatelessWidget {
  const GreetingsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Good Morning Alexa",
          style: TextStyle(color: Colors.grey, fontSize: 17),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Find Your\nCreative Job",
          style:
              TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}