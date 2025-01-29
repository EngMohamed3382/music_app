import 'package:flutter/material.dart';
import 'package:music_app/core/resources/assets_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomSongsDetails extends StatelessWidget {
  const CustomSongsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(RadiusValuesManagers.r10),
                  child: Image(
                      fit: BoxFit.cover,
                      height: HeightValuesManagers.h151,
                      width: WidthValuesManagers.w151,
                      image: AssetImage(AssetsManagers.homePageH1)),
                ),
                Text(
                  "Music Name",
                  style: TextStyle(
                      fontSize: FontSizeManagers.f15,
                      fontWeight: FontWeight.w500,
                      color: ColorManagers.kWhite),
                ),
                Text(
                  "Singer",
                  style: TextStyle(
                      fontSize: FontSizeManagers.f12,
                      fontWeight: FontWeight.w500,
                      color: ColorManagers.kWhite),
                ),
              ],
            ),
            separatorBuilder: (context, index)=> SizedBox(width: WidthValuesManagers.w17,),
            itemCount: 3));
  }
}