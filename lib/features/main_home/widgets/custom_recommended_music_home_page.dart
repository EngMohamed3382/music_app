import 'package:flutter/material.dart';
import 'package:music_app/features/main_home/widgets/custom_row_recommended_music.dart';
import 'package:music_app/models/songsModel.dart';

class CustomRecommendedMusicHomePage extends StatelessWidget {
  const CustomRecommendedMusicHomePage({super.key, required this.onTap, required this.listSongModel});

  final Function(int index) onTap;
  final List<SongsModel> listSongModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
        separatorBuilder: (context,index) => SizedBox(height: 10,),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
            onTap: (){
              onTap(index);
            },
            child: CustomRowRecommendedMusic(
              songsModel: listSongModel[index],
            )),
        itemCount: listSongModel.length,
      ),
    );
  }
}
