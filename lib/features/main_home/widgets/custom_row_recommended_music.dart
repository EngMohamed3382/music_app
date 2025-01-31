import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/models/songsModel.dart';

class CustomRowRecommendedMusic extends StatelessWidget {
  const CustomRowRecommendedMusic({
    super.key, required this.songsModel,
  });
  final SongsModel songsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        songsModel.song,
        style: TextStyle(
            color: ColorManagers.kWhite,
            fontSize: FontSizeManagers.f15),
      ),
      subtitle: Text(
        songsModel.singer,
        style: TextStyle(
            color: ColorManagers.kLightPurple,
            fontSize: FontSizeManagers.f12),
      ),
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(songsModel.image),
      ),
      trailing: Icon(Icons.favorite_outline, color: ColorManagers.kWhite,),
    );
  }
}