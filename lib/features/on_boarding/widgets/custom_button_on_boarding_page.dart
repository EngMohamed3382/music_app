import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomButtonOnBoardingPage extends StatelessWidget {
  const CustomButtonOnBoardingPage({
    super.key, required this.onPressed,required this.text
  });
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Container(
            alignment: Alignment.center,
            width: WidthValuesManagers.w171,
            height: HeightValuesManagers.h60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
                border: Border(
                    top: BorderSide(
                      color: ColorManagers.kWhite,
                      width: WidthValuesManagers.w2,
                    )),
                color: ColorManagers.kWhite,
                gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [
                      ColorManagers.kLight2Blue,
                      ColorManagers.kLightBlue,
                    ])),
            child: Text(
              text,
              style: TextStyle(color: ColorManagers.kWhite),
            )));
  }
}