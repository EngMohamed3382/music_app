import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/string_value.dart';

class CustomTitleOnBoardingPage extends StatelessWidget {
  const CustomTitleOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          StringsValues.titleOnBoardingPage,
          style: TextStyle(
            height: HeightValuesManagers.h1,
            fontWeight: FontWeight.w700,
            color: ColorManagers.kWhite,
            fontSize: FontSizeManagers.f50,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          StringsValues.music,
          style: TextStyle(
            height: HeightValuesManagers.h1,
            fontWeight: FontWeight.w700,
            color: ColorManagers.kLightBlue,
            fontSize: FontSizeManagers.f50,
          ),
        ),
      ],
    );
  }
}
