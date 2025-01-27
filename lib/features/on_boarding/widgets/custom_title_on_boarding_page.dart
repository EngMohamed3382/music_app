import 'package:flutter/material.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          "Find Your Favourite",
          style:
          TextStyle(height: 1,fontWeight: FontWeight.w700, color: Colors.white, fontSize: 50),
        ),
        Text(
          textAlign: TextAlign.center,
          "Music",
          style:
          TextStyle(height: 1, fontWeight: FontWeight.w700,color: Color(0xff80CFF2), fontSize: 50),
        ),
      ],
    );
  }
}
