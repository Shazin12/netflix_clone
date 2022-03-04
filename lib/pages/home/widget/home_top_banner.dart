import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

import 'btn/home_play_btn.dart';
import 'btn/home_top_2_btn.dart';
import '../../../core/widgets/icon_text_btn_col.dart';

class HomeTopBanner extends StatelessWidget {
  const HomeTopBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(
                  image: NetworkImage(bannerimg), fit: BoxFit.fill),
            ),
          ),
          const HomeTop2Btn(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Colors.black,
                  ])),
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconAndTextColBtn(
                    icon: Icons.add,
                    title: "My List",
                    onTap: () {},
                  ),
                  const HomePlayButton(),
                  IconAndTextColBtn(
                    icon: Icons.info_outline_rounded,
                    title: "Info",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
