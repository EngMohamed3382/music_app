import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';

class CustomRowRecommendedMusic extends StatelessWidget {
  const CustomRowRecommendedMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "data",
        style: TextStyle(
            color: ColorManagers.kWhite,
            fontSize: FontSizeManagers.f15),
      ),
      subtitle: Text(
        "data",
        style: TextStyle(
            color: ColorManagers.kLightPurple,
            fontSize: FontSizeManagers.f12),
      ),
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(AssetsManagers.homePageH5),
      ),
      trailing: Icon(Icons.favorite_outline, color: ColorManagers.kWhite,),
    );
  }
}