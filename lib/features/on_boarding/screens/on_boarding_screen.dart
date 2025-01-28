import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/assets_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/string_value.dart';
import 'package:music_app/features/on_boarding/widgets/custom_button_on_boarding_page.dart';
import 'package:music_app/features/on_boarding/widgets/custom_sub_title_on_boarding_page.dart';
import 'package:music_app/features/on_boarding/widgets/custom_title_on_boarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment(
                        AlignmentManagersX.x0_20, AlignmentManagersY.y_0_98),
                    end: Alignment(
                        AlignmentManagersX.x_0_20, AlignmentManagersY.y0_98),
                    colors: [
                  ColorManagers.kPrimaryColor,
                  ColorManagers.kSecondPrimaryColor.withValues(alpha: 0.54),
                ])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: HeightValuesManagers.h111,
                ),
                const CustomTitleOnBoardingPage(),
                const SizedBox(
                  height: HeightValuesManagers.h11,
                ),
                CustomSubTitleOnBoardingPage(),
                SizedBox(
                  height: HeightValuesManagers.h58,
                ),
                CustomButtonOnBoardingPage(
                  onPressed: () {},
                  text: StringsValues.getStarted,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(AssetsManagers.onBoardingImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
