import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/padding_value.dart';
import 'package:music_app/core/resources/string_value.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: PaddingValue.p58,
          top: PaddingValue.p32,
          right: PaddingValue.p58),
      child: Text(
        StringsValues.searchFiles,
        style: TextStyle(
            color: ColorManagers.kWhite,
            fontWeight: FontWeight.w500,
            fontSize: FontSizeManagers.f18),
      ),
    );
  }
}