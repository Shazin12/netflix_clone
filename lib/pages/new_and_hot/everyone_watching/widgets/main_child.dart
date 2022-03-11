import 'package:flutter/material.dart';
import 'package:netfilx_clone/pages/new_and_hot/widget/video_bottom_btn_HN.dart';

import '../../../../core/widgets/shortcut_widget.dart';
import '../../../../models/upcoming_model/upcoming_model.dart';
import '../../widget/HN_des.dart';
import '../../widget/video_player_HN.dart';
import 'side_btn.dart';

class EveryoneWatchChild extends StatelessWidget {
  const EveryoneWatchChild({
    Key? key,
    required this.nowPlayingModel,
  }) : super(key: key);
  final HotAndNewModel nowPlayingModel;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          sizedBoxH10,
          HotAndNewVideoPlayer(
            textboxwidth: media.width,
            textboxHeight: textboxHeight + 30,
            url: nowPlayingModel.videoUrl,
            imgUrl: nowPlayingModel.movie.poster_path,
            id: nowPlayingModel.movie.id.toString(),
          ),
          HotandNewVideoBottomBtn(
            textboxwidth: media.width,
            topBtnChild: const EveyOneSideBtn(),
          ),
          sizedBoxH10,
          sizedBoxH5,
          HotAndNewDes(
            pasingwidth: media.width,
            title: nowPlayingModel.movie.title,
            description: nowPlayingModel.movie.overview,
          )
        ],
      ),
    );
  }
}
