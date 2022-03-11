import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/search/widget/section_2.dart';
import 'package:netfilx_clone/pages/search/widget/top_search_child.dart';
import 'package:netfilx_clone/providers/popularMovies/popular_movies_pro.dart';
import 'package:provider/provider.dart';

class MianSearchChild extends StatelessWidget {
  const MianSearchChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section2SearchText(title: "Top Searches"),
        sizedBoxH10,
        sizedBoxH10,
        Expanded(
          child: Consumer<PopularMoviesPro>(
            builder: (_, v, w) => v.loading
                ? const Progress()
                : ListView.builder(
                    itemCount: v.popularMovies.length,
                    itemBuilder: (_, i) => TopSearchChild(
                        title: v.popularMovies[i].movie.title,
                        imgUrl: v.popularMovies[i].movie.poster_path,
                        onTapIcon: () {}),
                  ),
          ),
        ),
      ],
    );
  }
}
