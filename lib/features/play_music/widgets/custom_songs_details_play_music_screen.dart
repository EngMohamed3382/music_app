import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/models/songsModel.dart';

class CustomSongsDetailsPlayMusic extends StatelessWidget {
  const CustomSongsDetailsPlayMusic({
    super.key, required this.songsModel,
  });
final SongsModel songsModel;
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
            image: AssetImage(songsModel.image),
          ),
        ),
        SizedBox(
          height: HeightValuesManagers.h10,
        ),
        Text(
          songsModel.song,
          style: TextStyle(
              color: ColorManagers.kWhite,
              fontWeight: FontWeight.w500,
              fontSize: FontSizeManagers.f18),
        ),
        SizedBox(
          height: HeightValuesManagers.h4,
        ),
        Text(
          songsModel.singer,
          style: TextStyle(
              color: ColorManagers.kLightPurple,
              fontWeight: FontWeight.w500,
              fontSize: FontSizeManagers.f12),
        ),
      ],
    );
  }
}