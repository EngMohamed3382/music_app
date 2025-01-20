import 'package:flutter/material.dart';
import 'package:music_app/core/resources/routes_managers.dart';
import 'package:music_app/core/resources/time_manager.dart';

class SplashController {
  static void navigatorToOnBoardingPage({required BuildContext context}){
    Future.delayed(const Duration(seconds: Secondsvalues.s3), () {
      Navigator.pushReplacementNamed(context, RoutesName.kOnBoardingScreen);
    },);
  }
}