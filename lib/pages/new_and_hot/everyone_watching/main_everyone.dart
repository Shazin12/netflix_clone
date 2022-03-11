import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/lazy_loader.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/providers/hn_lazy_loader_pro/hn_lazy_loader_pro.dart';
import 'package:netfilx_clone/providers/hot_new_provider/hot_new_pro.dart';
import 'package:provider/provider.dart';
import 'widgets/child_section1.dart';

class MainEveroneWatching extends StatelessWidget {
  MainEveroneWatching({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Consumer2<HotAndNewProvider, HotAndNewLazyLoaderPro>(
      builder: (context, value, value2, child) {
        Widget child = NowPlayingSection1(
          value: value.nowPlaying,
          controller: _controller,
        );
        return CusLazyLoadScrollView(
          child: value.nowPlayingloading && !value2.bottomLoadingNowPlaying
              ? const Progress()
              : child,
          onEndOfPage: () =>
              Future.microtask(() => value.getMoreNowPlayingRes(context)),
          isLoading: value2.bottomLoadingNowPlaying,
        );
      },
    );
  }
}
