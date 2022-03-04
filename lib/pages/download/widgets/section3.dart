import 'dart:math';

import 'package:flutter/material.dart';

import 'image_show.dart';

class Section3Center extends StatelessWidget {
  const Section3Center({Key? key}) : super(key: key);

  final img =
      "https://assets.gadgets360cdn.com/pricee/assets/product/202111/spider_man_no_way_home_india_1638191040.jpg";
  final img2 =
      "https://m.media-amazon.com/images/M/MV5BMzhhMDliZTItODYxZS00MzBhLWI4YzgtMmJkMzFlNTRkMTVhXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg";

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width,
      height: media.height / 2,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            //   radius: 90,
            maxRadius: 110,
            minRadius: 90,
            // maxRadius: 120,
            backgroundColor: Colors.grey[800],
          ),
          ImageShow(
            imageUrl: img2,
            size: const Size(120, 150),
            angle: pi * 0.1,
            padding: const EdgeInsets.only(left: 120, top: 20),
          ),
          ImageShow(
            imageUrl: img,
            size: const Size(120, 150),
            angle: pi * -0.1,
            padding: const EdgeInsets.only(right: 120, top: 20),
          ),
          ImageShow(
            imageUrl: img,
            size: const Size(120, 170),
            angle: 0,
            padding: const EdgeInsets.only(bottom: 5),
          )
        ],
      ),
    );
  }
}
