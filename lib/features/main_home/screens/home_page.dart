import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/string_value.dart';
import 'package:music_app/features/main_home/widgets/custom_row_recommended_music.dart';
import 'package:music_app/features/main_home/widgets/custom_songs_details.dart';
import 'package:music_app/features/main_home/widgets/custom_text_field_home_page.dart';
import 'package:music_app/features/main_home/widgets/custom_title_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldHomePage(),
            CustomTitleHomePage(
              title: StringsValues.searchFiles,
            ),
            SizedBox(
              height: HeightValuesManagers.h22,
            ),
            CustomSongsDetails(
              musicName: "Hello",
              singerName: "Ayman",
              itemCount: 7,
            ),
            CustomTitleHomePage(
              title: "Recommended",
            ),
            SizedBox(
              height: HeightValuesManagers.h22,
            ),
            CustomRowRecommendedMusic(),
          ],
        ),
      ),
    );
  }
}


