import 'package:flutter/material.dart';
import 'package:music_app/controller/home_controller.dart';
import 'package:music_app/features/home/widgets/custom_bottom_nav_bar_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: CustomBottomNavBarHomeScreen());
  }
}
