import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/icon_text_btn_col.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

import '../widget/HN_des.dart';
import '../widget/video_bottom_btn_HN.dart';
import '../widget/video_player_HN.dart';
import 'widget/month_day.dart';

class MainComingSoon extends StatelessWidget {
  const MainComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 7,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: MainComingSoonChild(),
      ),
    );
  }
}

class MainComingSoonChild extends StatelessWidget {
  const MainComingSoonChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    var textboxwidth = 35.0;
    // 20 for using 2 sizedbox
    var pasingwisth = media.width - textboxwidth - 20;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // month and day
          MonthAndDate(
            textboxwidth: textboxwidth,
            textboxHeight: textboxHeight,
            month: "feb",
            day: "11",
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // video player
              HotAndNewVideoPlayer(
                textboxwidth: pasingwisth,
                textboxHeight: textboxHeight,
              ),
              // video title image and btn
              HotandNewVideoBottomBtn(
                textboxwidth: pasingwisth,
                topBtnChild: topBtn(),
              ),
              sizedBoxH10,
              sizedBoxH5,
              // title description
              HotAndNewDes(pasingwidth: pasingwisth),
            ],
          )
        ],
      ),
    );
  }

  Widget topBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconAndTextColBtn(
            icon: Icons.notifications_none_rounded,
            iconSize: 24,
            title: "Remaind Me",
            fontWeight: FontWeight.w400,
            textSize: 13,
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconAndTextColBtn(
            icon: Icons.info_outline_rounded,
            iconSize: 24,
            title: "Info",
            fontWeight: FontWeight.w400,
            textSize: 13,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
