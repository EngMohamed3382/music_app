import 'package:flutter/material.dart';
import 'package:music_app/controller/splash_controller.dart';
import 'package:music_app/features/splash/widgets/custom_logo_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashController.navigatorToOnBoardingPage(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomLogoSplashScreen(),
    );
  }
}
