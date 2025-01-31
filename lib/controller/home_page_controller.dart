import 'package:flutter/material.dart';
import '../core/resources/routes_managers.dart';

class HomePageController {
static void navigatorToPlayMusicScreen({required BuildContext context}){

    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen);

}
static void navigatorToPop({required BuildContext context}){

    Navigator.pop(context);

}
}