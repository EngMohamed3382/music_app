import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';

class CustomSongsDetailsPlayMusic extends StatelessWidget {
  const CustomSongsDetailsPlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(RadiusValuesManagers.r10),
          child: Image(
            fit: BoxFit.cover,
            width: 261,
            height: 247,
            image: AssetImage(AssetsManagers.homePageH5),
          ),
        ),
        SizedBox(
          height: HeightValuesManagers.h10,
        ),
        Text(
          "NEW RULES",
          style: TextStyle(
              color: ColorManagers.kWhite,
              fontWeight: FontWeight.w500,
              fontSize: FontSizeManagers.f18),
        ),
        SizedBox(
          height: HeightValuesManagers.h4,
        ),
        Text(
          "Dua Lipa",
          style: TextStyle(
              color: ColorManagers.kLightPurple,
              fontWeight: FontWeight.w500,
              fontSize: FontSizeManagers.f12),
        ),
      ],
    );
  }
}