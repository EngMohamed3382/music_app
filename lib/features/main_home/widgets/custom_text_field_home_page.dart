import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/padding_value.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/core/resources/string_value.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: PaddingValue.p15),
          hintText: StringsValues.searchHere,
          hintStyle: TextStyle(color: ColorManagers.kWhite, fontSize: FontSizeManagers.f12),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: PaddingValue.p20, right: PaddingValue.p10),
            child: Icon(Icons.search, color: ColorManagers.kWhite,),
          ),
          filled: true,
          fillColor: ColorManagers.kLightPurple,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusValuesManagers.r50)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(RadiusValuesManagers.r50)
          )
      ),
    );
  }
}