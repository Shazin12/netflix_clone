import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_cus_app_bar.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

import 'widget/home_top_banner.dart';
import 'widget/playListMovies/playlist_child.dart';
import 'widget/playListMovies/playlist_movies.dart';
import 'widget/playlist_movie_with_num/playlist_with_num.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CusAppBar(
          leftChild: Container(
            color: Colors.redAccent,
            width: 30,
            height: 30,
          ),
        ),
        const HomeTopBanner(),
        sizedBoxH10,
        sizedBoxH10,
        const PlayListMovies(
          title: "TOP 10 LIST'S",
          child: PlayListChild(),
        ),
        sizedBoxH10,
        sizedBoxH10,
        const PlayListMovies(
          title: "TOP 10 LIST'S",
          child: PlayListChild(),
        ),
        sizedBoxH10,
        sizedBoxH10,
        const PlayListMovies(
          title: "TOP 10 LIST'S",
          child: PlayListWithNum(),
        ),
        sizedBoxH10,
        sizedBoxH10,
        const PlayListMovies(
          title: "TOP 10 LIST'S",
          child: PlayListChild(),
        ),
        sizedBoxH10,
        sizedBoxH10,
      ],
    );
  }
}
