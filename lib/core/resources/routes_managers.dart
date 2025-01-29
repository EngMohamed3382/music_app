import 'package:flutter/material.dart';
import 'package:music_app/features/main_home/screens/main_home_screen.dart';
import 'package:music_app/features/on_boarding/screens/on_boarding_screen.dart';
import 'package:music_app/features/play_music/screens/play_music_screen.dart';
import 'package:music_app/features/splash/screens/splash_screen.dart';

class RoutesManagers{
  static Map<String, WidgetBuilder> routes={
    RoutesName.kSplashScreen: (context) => const SplashScreen(),
    RoutesName.kOnBoardingScreen: (context) => const OnBoardingScreen(),
    RoutesName.kHomeScreen: (context) => const MainHomeScreen(),
    RoutesName.kPlayMusicScreen: (context) => const PlayMusicScreen(),
  };
}

class RoutesName{
  static const String kSplashScreen = "/kSplashScreen";
  static const String kOnBoardingScreen = "/kOnBoardingScreen";
  static const String kHomeScreen = "/kHomeScreen";
  static const String kPlayMusicScreen = "/kPlayMusicScreen";
}