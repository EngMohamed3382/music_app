import 'package:flutter/material.dart';
import 'package:music_app/controller/home_page_controller.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/constants_value.dart';
import 'package:music_app/features/play_music/widgets/custom_tool_2_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_app_bar_play_music_screen.dart';
import 'package:music_app/features/play_music/widgets/custom_button_controller_play_music.dart';
import 'package:music_app/features/play_music/widgets/custom_songs_details_play_music_screen.dart';
import 'package:music_app/features/play_music/widgets/custom_tools_play_music.dart';
import 'package:audioplayers/audioplayers.dart';

class PlayMusicScreen extends StatefulWidget {

  const PlayMusicScreen({super.key});

  @override
  State<PlayMusicScreen> createState() => _PlayMusicScreenState();
}

class _PlayMusicScreenState extends State<PlayMusicScreen> {
  @override
  void initState() {
    super.initState();

  }
  int? index;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
     index =  ModalRoute.of(context)!.settings.arguments as int;

     play();

  }
  void play ()async{
    AudioCache audioCache = AudioCache(prefix: "");
    Uri uri = await audioCache.load(ConstantsValue.listQuran[index!].pathSong);
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play(UrlSource(uri.toString()));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBarPlayMusicScreen(
        onPressed: (){
          HomePageController.navigatorToPop(context: context);
        },
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(
                    AlignmentManagersX.x0_20, AlignmentManagersY.y_0_98),
                end: Alignment(
                    AlignmentManagersX.x_0_20, AlignmentManagersY.y0_98),
                colors: [
              ColorManagers.kPrimaryColor,
              ColorManagers.kDarkBlue
            ])),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Spacer(),
                // SizedBox(
                //   height: HeightValuesManagers.h124,
                // ),
                CustomSongsDetailsPlayMusic(),
                SizedBox(
                  height: 28,
                ),
                CustomButtonControllerPlayMusic(
                  value: 0.6,
                  onChanged: (value) {},
                ),
                CustomToolsPlayMusic(),
                CustomTools2PlayMusic(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

