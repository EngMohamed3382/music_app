import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/padding_value.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';

class CustomToolsPlayMusic extends StatelessWidget {
  const CustomToolsPlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(PaddingValue.p7),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusValuesManagers.r10)
        ),
        color: ColorManagers.kLightPurple.withValues(alpha: 0.50),
      ),
      margin: EdgeInsets.symmetric(horizontal: PaddingValue.p89,vertical: PaddingValue.p7),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.favorite_border,color: ColorManagers.kWhite,size: FontSizeManagers.f24),
              Text("Like", style: TextStyle(color: ColorManagers.kLightPurple,fontSize: FontSizeManagers.f8, fontWeight: FontWeight.w500),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.featured_play_list_outlined,color: ColorManagers.kWhite,size: FontSizeManagers.f24),
              Text("PlayList", style: TextStyle(color: ColorManagers.kLightPurple,fontSize: FontSizeManagers.f8, fontWeight: FontWeight.w500),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.download,color: ColorManagers.kWhite,size: FontSizeManagers.f24),
              Text("Download", style: TextStyle(color: ColorManagers.kLightPurple,fontSize: FontSizeManagers.f8, fontWeight: FontWeight.w500),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.more_vert,color: ColorManagers.kWhite,size: FontSizeManagers.f24),
              Text("More", style: TextStyle(color: ColorManagers.kLightPurple,fontSize: FontSizeManagers.f8, fontWeight: FontWeight.w500),),
            ],
          ),
        ],
      ),
    );
  }
}