import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/resources/alignment_managers.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';

class CustomButtonControllerPlayMusic extends StatelessWidget {
  const CustomButtonControllerPlayMusic({
    super.key, required this.onChanged, required this.value

  });
  final ValueChanged<double> onChanged;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.shuffle,size: FontSizeManagers.f40,color: ColorManagers.kWhite,),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
                    gradient: LinearGradient(
                        begin: Alignment(AlignmentManagersX.x0_20,
                            AlignmentManagersY.y_0_98),
                        end: Alignment(AlignmentManagersX.x_0_20,
                            AlignmentManagersY.y0_98),
                        colors: [
                          ColorManagers.kThirdPrimaryColor,
                          ColorManagers.kLightPurple
                        ])
                ),
                child: Icon(Icons.skip_previous,color: ColorManagers.kWhite,size: FontSizeManagers.f40,)),
            Container(
                width: WidthValuesManagers.w80,
                height: HeightValuesManagers.h80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
                    gradient: LinearGradient(
                        begin: Alignment(AlignmentManagersX.x0_20,
                            AlignmentManagersY.y_0_98),
                        end: Alignment(AlignmentManagersX.x_0_20,
                            AlignmentManagersY.y0_98),
                        colors: [
                          ColorManagers.kThirdPrimaryColor,
                          ColorManagers.kLightPurple
                        ])
                ),
                child: Icon(CupertinoIcons.pause,color: ColorManagers.kWhite,size: FontSizeManagers.f60,)),
            // Container(
            //   width: 50,
            //     height: 50,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
            //         gradient: LinearGradient(colors: [
            //           ColorManagers.kThirdPrimaryColor,
            //           ColorManagers.kLightPurple
            //         ])
            //     ),
            //     child: Icon(CupertinoIcons.pause,color: ColorManagers.kWhite,size: 50,)),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(RadiusValuesManagers.r50),
                    gradient: LinearGradient(
                        begin: Alignment(AlignmentManagersX.x0_20,
                            AlignmentManagersY.y_0_98),
                        end: Alignment(AlignmentManagersX.x_0_20,
                            AlignmentManagersY.y0_98),
                        colors: [
                          ColorManagers.kThirdPrimaryColor,
                          ColorManagers.kLightPurple
                        ])
                ),
                child: Icon(Icons.skip_next,color: ColorManagers.kWhite,size: FontSizeManagers.f40,)),
            Icon(CupertinoIcons.repeat,color: ColorManagers.kWhite,size: FontSizeManagers.f40,),

          ],
        ),
        SizedBox(
          height: HeightValuesManagers.h29,
        ),
        SliderTheme(data: SliderThemeData(
          thumbShape: RoundSliderThumbShape()
        ), child: Slider(
          value: 0.5, onChanged: onChanged,
          activeColor: ColorManagers.kLightPurple,
          inactiveColor: ColorManagers.kDarkPurple,
        ),)
      ],
    );
  }
}

class RoundSliderThumbShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0.0, 0.0); // Adjust the size of the thumb
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow}) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()
      ..color = ColorManagers.kLightPurple
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0;

    canvas.drawCircle(center, 3.0, paint); // Draw a circle as the thumb

    // TODO: implement paint
  }
}