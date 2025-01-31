import 'package:flutter/material.dart';
import 'package:music_app/core/resources/color_managers.dart';
import 'package:music_app/core/resources/font_managers.dart';
import 'package:music_app/core/resources/height_values_managers.dart';
import 'package:music_app/core/resources/padding_value.dart';
import 'package:music_app/core/resources/radius_values_managers.dart';
import 'package:music_app/core/resources/width_values_managers.dart';
import 'package:music_app/models/songsModel.dart';

class CustomSearchDetails extends StatelessWidget {
  const CustomSearchDetails({
    super.key, required this.listsongsModel, required this.itemCount, required this.onTap,
  });
    final List<SongsModel> listsongsModel;
    final int itemCount;
    final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingValue.p20),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: (){
                onTap(index);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(RadiusValuesManagers.r10),
                    child: Image(
                        fit: BoxFit.cover,
                        height: HeightValuesManagers.h151,
                        width: WidthValuesManagers.w151,
                        image: AssetImage(listsongsModel[index].image)),
                  ),
                  SizedBox(height: HeightValuesManagers.h9,),
                  Text(
                    listsongsModel[index].song,
                    style: TextStyle(
                        fontSize: FontSizeManagers.f15,
                        fontWeight: FontWeight.w500,
                        color: ColorManagers.kWhite),
                  ),
                  SizedBox(height: HeightValuesManagers.h4,),
                  Text(
                    listsongsModel[index].singer,
                    style: TextStyle(
                        fontSize: FontSizeManagers.f12,
                        fontWeight: FontWeight.w500,
                        color: ColorManagers.kWhite),
                  ),
                ],
              ),
            ),
            separatorBuilder: (context, index)=> SizedBox(width: WidthValuesManagers.w17,),
            itemCount: listsongsModel.length),
      ),
    );
  }
}