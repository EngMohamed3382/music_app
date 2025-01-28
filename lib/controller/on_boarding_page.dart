import 'package:flutter/cupertino.dart';
import 'package:music_app/core/resources/routes_managers.dart';

class OnBoardingController{
  static void navigateToHomeScreen({required BuildContext context}){
    Navigator.pushNamed(context, RoutesName.kHomeScreen);
  }
}