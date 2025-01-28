import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';

class CustomTextFieldHomePage extends StatelessWidget {
  const CustomTextFieldHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search Here",
          hintStyle: TextStyle(color: ColorManagers.kWhite, fontSize: 15),
          prefixIcon: Icon(Icons.search, color: ColorManagers.kWhite,),
          filled: true,
          fillColor: Color(0xffc382de),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          )
      ),
    );
  }
}