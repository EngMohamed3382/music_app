import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/padding_value.dart';
import 'package:music_app/core/resources/string_value.dart';

class CustomSubTitleOnBoardingPage extends StatelessWidget {
  const CustomSubTitleOnBoardingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingValue.p70),
      child: Text(
        StringsValues.subTitleOnBoardingPage,
        textAlign: TextAlign.center,
        style: TextStyle(color: ColorManagers.kWhite, fontWeight: FontWeight.w500),
      ),
    );
  }
}
