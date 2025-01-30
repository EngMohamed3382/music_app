import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.shuffle,size: FontSizeManagers.f40,color: ColorManagers.kWhite,),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
                gradient: LinearGradient(
                    begin: Alignment(AlignmentManagersX.x0_20,
                        AlignmentManagersY.y_0_98),
                    end: Alignment(AlignmentManagersX.x_0_20,
                        AlignmentManagersY.y0_98),
                    colors: [
                      ColorManagers.kThirdPrimaryColor,
                      ColorManagers.kLightPurple
                    ])
            ),
            child: Icon(Icons.skip_previous,color: ColorManagers.kWhite,size: FontSizeManagers.f40,)),
        Container(
            width: WidthValuesManagers.w80,
            height: HeightValuesManagers.h80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
                gradient: LinearGradient(
                    begin: Alignment(AlignmentManagersX.x0_20,
                        AlignmentManagersY.y_0_98),
                    end: Alignment(AlignmentManagersX.x_0_20,
                        AlignmentManagersY.y0_98),
                    colors: [
                      ColorManagers.kThirdPrimaryColor,
                      ColorManagers.kLightPurple
                    ])
            ),
            child: Icon(CupertinoIcons.pause,color: ColorManagers.kWhite,size: FontSizeManagers.f60,)),
        // Container(
        //   width: 50,
        //     height: 50,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
        //         gradient: LinearGradient(colors: [
        //           ColorManagers.kThirdPrimaryColor,
        //           ColorManagers.kLightPurple
        //         ])
        //     ),
        //     child: Icon(CupertinoIcons.pause,color: ColorManagers.kWhite,size: 50,)),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
                gradient: LinearGradient(
                    begin: Alignment(AlignmentManagersX.x0_20,
                        AlignmentManagersY.y_0_98),
                    end: Alignment(AlignmentManagersX.x_0_20,
                        AlignmentManagersY.y0_98),
                    colors: [
                      ColorManagers.kThirdPrimaryColor,
                      ColorManagers.kLightPurple
                    ])
            ),
            child: Icon(Icons.skip_next,color: ColorManagers.kWhite,size: FontSizeManagers.f40,)),
        Icon(CupertinoIcons.repeat,color: ColorManagers.kWhite,size: FontSizeManagers.f40,),

      ],
    );
  }
}