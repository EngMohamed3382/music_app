import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';

class CustomBottomNavBarHomeScreen extends StatelessWidget {
  const CustomBottomNavBarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff261f44),
        items: [
          for (int i = 0; i < HomeController.homeIcon.length; i++)
            BottomNavigationBarItem(icon: HomeController.homeIcon[i], label: "")
        ]);
  }
}
