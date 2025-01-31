import 'package:flutter/material.dart';
import '../core/resources/routes_managers.dart';

class HomePageController {
static void navigatorToPlayMusicScreen({required BuildContext context, required int index}){

    Navigator.pushNamed(context, RoutesName.kPlayMusicScreen, arguments: index);

}
static void navigatorToPop({required BuildContext context}){

    Navigator.pop(context);

}
}