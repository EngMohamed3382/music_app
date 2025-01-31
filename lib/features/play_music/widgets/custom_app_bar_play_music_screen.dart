import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/string_value.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomAppBarPlayMusicScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarPlayMusicScreen({
     required this.onPressed,super.key,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Icon(
          Icons.share,
          color: ColorManagers.kWhite,
          size: FontSizeManagers.f20,
        ),
        SizedBox(
          width: WidthValuesManagers.w22,
        ),
        Icon(
          Icons.more_vert,
          color: ColorManagers.kWhite,
          size: FontSizeManagers.f20,
        ),
        SizedBox(
          width: WidthValuesManagers.w13,
        ),
      ],
      title: Text(
        StringsValues.nowPlaying,
        style: TextStyle(
            color: ColorManagers.kWhite,
            fontSize: FontSizeManagers.f18,
            fontWeight: FontWeight.w500),
      ),
      centerTitle: true,
      leading: IconButton(onPressed: onPressed, icon: Icon(
        Icons.arrow_left,
        color: ColorManagers.kWhite,
        size: FontSizeManagers.f30,
      ),),
      backgroundColor: Colors.transparent,
    );
  }

  @override

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
