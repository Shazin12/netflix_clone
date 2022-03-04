import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/icon_text_btn_col.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/new_&_hot/widget/HN_des.dart';
import 'package:netfilx_clone/pages/new_&_hot/widget/video_bottom_btn_HN.dart';
import 'package:netfilx_clone/pages/new_&_hot/widget/video_player_HN.dart';

class MainEveroneWatching extends StatelessWidget {
  const MainEveroneWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: EveryoneWatchChild(),
      ),
    );
  }
}

class EveryoneWatchChild extends StatelessWidget {
  const EveryoneWatchChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          sizedBoxH10,
          HotAndNewVideoPlayer(
              textboxwidth: media.width, textboxHeight: textboxHeight + 30),
          HotandNewVideoBottomBtn(
            textboxwidth: media.width,
            topBtnChild: topBtn(),
          ),
          sizedBoxH10,
          sizedBoxH5,
          HotAndNewDes(pasingwidth: media.width)
        ],
      ),
    );
  }
}

Widget topBtn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    //   crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: IconAndTextColBtn(
          icon: Icons.share_outlined,
          iconSize: 24,
          title: "Share",
          fontWeight: FontWeight.w400,
          textSize: 13,
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: IconAndTextColBtn(
          icon: Icons.add,
          iconSize: 28,
          title: "My List",
          fontWeight: FontWeight.w400,
          textSize: 13,
          onTap: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: IconAndTextColBtn(
          icon: Icons.play_arrow,
          iconSize: 30,
          title: "Play",
          fontWeight: FontWeight.w400,
          textSize: 13,
          onTap: () {},
        ),
      ),
    ],
  );
}
