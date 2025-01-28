import 'package:flutter/material.dart';
import 'package:music_app/features/home/screens/home_screen.dart';
import 'package:music_app/features/on_boarding/screens/on_boarding_screen.dart';
import 'package:music_app/features/splash/screens/splash_screen.dart';

class RoutesManagers{
  static Map<String, WidgetBuilder> routes={
    RoutesName.kSplashScreen: (context) => const SplashScreen(),
    RoutesName.kOnBoardingScreen: (context) => const OnBoardingScreen(),
    RoutesName.kHomeScreen: (context) => const HomeScreen(),
  };
}

class RoutesName{
  static const String kSplashScreen = "/kSplashScreen";
  static const String kOnBoardingScreen = "/kOnBoardingScreen";
  static const String kHomeScreen = "/kHomeScreen";
}