import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
      BottomNavigationBarItem(
        label: "",
        icon: Icon(Icons.align_horizontal_left),
      ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.list),
          ),
              BottomNavigationBarItem(
                label: "",
                icon: Icon(Icons.settings),
              ),
    ]));
  }
}
