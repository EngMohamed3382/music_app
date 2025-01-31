import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/padding_value.dart';

class CustomTitleHomePage extends StatelessWidget {
  const CustomTitleHomePage({
    super.key, required this.title,
  });
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: PaddingValue.p34,
          top: PaddingValue.p32,
          right: PaddingValue.p58),
      child: Text(
        title,
        style: TextStyle(
            color: ColorManagers.kWhite,
            fontWeight: FontWeight.w500,
            fontSize: FontSizeManagers.f18),
      ),
    );
  }
}