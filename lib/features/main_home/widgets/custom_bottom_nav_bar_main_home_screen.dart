import 'package:flutter/material.dart';
import 'package:music_app/controller/main_home_controller.dart';
import 'package:music_app/core/resources/color_managers.dart';

class CustomBottomNavBarMainHomeScreen extends StatelessWidget {
  const CustomBottomNavBarMainHomeScreen({super.key, required this.onTap, required this.index});

 final ValueChanged<int>? onTap;
 final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: ColorManagers.kWhite,
      selectedItemColor: ColorManagers.kThirdPrimaryColor,
      currentIndex: index,
      onTap: onTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff261f44),
        items: [
          for (int i = 0; i < MainHomeController.homeIcon.length; i++)
            BottomNavigationBarItem(icon: MainHomeController.homeIcon[i], label: "")
        ]);
  }
}
