import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/features/main_home/widgets/custom_text_field_home_page.dart';

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
            ColorManagers.kPrimaryColor, ColorManagers.kDarkBlue
          ])
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 51,
              right: 31, left: 31),
              child: CustomTextFieldHomePage(),
            )
          ],
        ),
      ),
    );
  }
}


