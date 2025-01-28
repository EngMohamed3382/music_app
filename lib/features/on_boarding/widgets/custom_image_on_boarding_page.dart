import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_managers.dart';


class CustomImageOnBoardingPage extends StatelessWidget {
  const CustomImageOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage(AssetsManagers.onBoardingImage),
              fit: BoxFit.cover,
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: Container(
          //     width: MediaQuery.of(context).size.width,
          //     height: 199,
          //     decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //             begin: const Alignment(0.00, 1.00),
          //             end: const Alignment(0, -1),
          //             colors: [
          //               ColorManagers.kPrimaryColor,
          //               ColorManagers.kLight3Blue.withOpacity(0.04),
          //             ])),
          //   ),
          // ),
        ],
      ),
    );
  }
}
