import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/assets_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/padding_value.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar_play_music_screen.dart';
import 'package:music_app/features/play_music/widgets/custom_button_controller_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_songs_details_play_music_screen.dart';
import 'package:music_app/features/play_music/widgets/custom_tools_play_music.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(
                      AlignmentManagersX.x0_20, AlignmentManagersY.y_0_98),
                  end: Alignment(
                      AlignmentManagersX.x_0_20, AlignmentManagersY.y0_98),
                  colors: [
                ColorManagers.kPrimaryColor,
                ColorManagers.kDarkBlue
              ])),
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: HeightValuesManagers.h124,
                  ),
                  CustomSongsDetailsPlayMusic(),
                  SizedBox(
                    height: 28,
                  ),
                  CustomButtonControllerPlayMusic(
                    value: 0.6,
                    onChanged: (value) {},
                  ),
                  CustomToolsPlayMusic(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: PaddingValue.p11, horizontal: PaddingValue.p13),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(RadiusValuesManagers.r10)),
                      color: ColorManagers.kLightPurple.withValues(alpha: 0.50),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: PaddingValue.p34, vertical: PaddingValue.p25),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Up Next",
                              style: TextStyle(
                                  color: ColorManagers.kWhite,
                                  fontSize: FontSizeManagers.f8,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: ColorManagers.kLightPurple.withValues(alpha: 0.60),
                                borderRadius: BorderRadius.circular(RadiusValuesManagers.r10)
                              ),
        
                              padding: EdgeInsets.symmetric(vertical: PaddingValue.p3, horizontal: PaddingValue.p10),
                              child: Text(
                                "Queue",
                                style: TextStyle(
                                    color: ColorManagers.kWhite,
                                    fontSize: FontSizeManagers.f8,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.all(0),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(RadiusValuesManagers.r10),
                            child: Image(
                                width: WidthValuesManagers.w55,
                                height: HeightValuesManagers.h55,
                                fit: BoxFit.cover,
                                image: AssetImage(AssetsManagers.homePageH3)),
                          ),
                          title: Text("data", style: TextStyle(color: ColorManagers.kWhite, fontWeight: FontWeight.w500,fontSize: FontSizeManagers.f15),),
                          subtitle: Text("data",  style: TextStyle(color: ColorManagers.kLightPurple,fontSize: FontSizeManagers.f12,fontWeight: FontWeight.w500),),
                          trailing: Container(
                            decoration: BoxDecoration(
                                color: ColorManagers.kPrimaryColor,
                              borderRadius: BorderRadius.circular(RadiusValuesManagers.r50)
                            ),

                              width: 30,
                              height: 30,
                              child: Icon(Icons.skip_next,color: ColorManagers.kWhite,)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
