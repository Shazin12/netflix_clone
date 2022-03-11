import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/models/upcoming_model/upcoming_model.dart';
import 'package:netfilx_clone/pages/new_and_hot/widget/HN_des.dart';
import 'package:netfilx_clone/pages/new_and_hot/widget/video_bottom_btn_HN.dart';
import 'package:netfilx_clone/pages/new_and_hot/widget/video_player_HN.dart';

import 'month_day.dart';
import 'side_btn.dart';

class MainComingSoonChild extends StatelessWidget {
  const MainComingSoonChild({
    Key? key,
    required this.upComingModel,
  }) : super(key: key);
  final HotAndNewModel upComingModel;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var textboxwidth = 45.0;
    // 20 for using 2 sizedbox
    var pasingwidth = media.width - textboxwidth - 20;
    var date = DateTime.tryParse(upComingModel.movie.release_date);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // month and day
          MonthAndDate(
            textboxwidth: textboxwidth,
            textboxHeight: textboxHeight,
            month: date!.month.toString(),
            day: date.day.toString(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // video player
              HotAndNewVideoPlayer(
                textboxwidth: pasingwidth,
                textboxHeight: textboxHeight,
                url: upComingModel.videoUrl,
                imgUrl: upComingModel.movie.poster_path,
                id: upComingModel.movie.id.toString(),
              ),
              // video title image and btn
              HotandNewVideoBottomBtn(
                textboxwidth: pasingwidth,
                topBtnChild: const HNSideBtn(),
              ),
              sizedBoxH10,
              sizedBoxH5,
              // title description
              HotAndNewDes(
                pasingwidth: pasingwidth,
                title: upComingModel.movie.title,
                description: upComingModel.movie.overview,
              ),
            ],
          )
        ],
      ),
    );
  }
}
