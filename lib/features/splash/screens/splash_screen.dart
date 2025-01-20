import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Image(
              width: 150,
              height: 150,
              image: AssetImage("assets/images/logo.png")),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.20, -0.98),
                end: Alignment(-0.2, 0.98),
                colors: [
          ColorManagers.kPrimaryColor,
          ColorManagers.kSecondPrimaryColor.withValues(alpha:0.54),
        ])),
      ),
    );
  }
}
