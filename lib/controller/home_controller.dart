import 'package:flutter/material.dart';

class HomeController {
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
   Scaffold(body: Center(
     child: Text("Home"),
   ),),
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