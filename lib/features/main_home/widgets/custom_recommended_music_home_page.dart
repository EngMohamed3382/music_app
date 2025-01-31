import 'package:flutter/material.dart';
import 'package:music_app/features/main_home/widgets/custom_row_recommended_music.dart';

class CustomRecommendedMusicHomePage extends StatelessWidget {
  const CustomRecommendedMusicHomePage({super.key, required this.onTap});

  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
        separatorBuilder: (context,index) => SizedBox(height: 10,),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
            onTap: onTap,
            child: CustomRowRecommendedMusic()),
        itemCount: 15,
      ),
    );
  }
}
