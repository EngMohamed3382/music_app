import 'package:flutter/material.dart';
import 'package:music_app/features/main_home/screens/home_page.dart';

class MainHomeController {
 static List<Icon> homeIcon=[
    Icon(Icons.align_horizontal_left),
    Icon(Icons.home),
    Icon(Icons.favorite),
    Icon(Icons.list),
    Icon(Icons.settings)
  ];
 static List<Widget> homePages=[
   Scaffold(body: Center(
     child: Text("Align Horizontal Left"),
   ),),
   HomePage(),
   Scaffold(body: Center(
     child: Text("Favourite"),
   ),),
   Scaffold(body: Center(
     child: Text("List"),
   ),),
   Scaffold(body: Center(
     child: Text("Settings"),
   ),),
 ];
}