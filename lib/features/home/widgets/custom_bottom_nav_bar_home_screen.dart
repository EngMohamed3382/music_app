import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/core/resources/color_managers.dart';

class CustomBottomNavBarHomeScreen extends StatelessWidget {
  const CustomBottomNavBarHomeScreen({super.key, required this.onTap, required this.index});

 final ValueChanged<int>? onTap;
 final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: ColorManagers.kWhite,
      selectedItemColor: ColorManagers.kThirdPrimaryColor,
      currentIndex: index,
      onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff261f44),
        items: [
          for (int i = 0; i < HomeController.homeIcon.length; i++)
            BottomNavigationBarItem(icon: HomeController.homeIcon[i], label: "")
        ]);
  }
}
