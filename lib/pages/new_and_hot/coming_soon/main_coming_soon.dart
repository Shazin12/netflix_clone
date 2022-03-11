import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/lazy_loader.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/pages/new_and_hot/coming_soon/widget/child_section1.dart';
import 'package:netfilx_clone/providers/hn_lazy_loader_pro/hn_lazy_loader_pro.dart';
import 'package:netfilx_clone/providers/hot_new_provider/hot_new_pro.dart';
import 'package:provider/provider.dart';

class MainComingSoon extends StatelessWidget {
  MainComingSoon({Key? key}) : super(key: key);
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Consumer2<HotAndNewProvider, HotAndNewLazyLoaderPro>(
      builder: (context, value, value2, child) {
        Widget child = ComingSoonSection1(
          value: value.upcoming,
          controller: _controller,
        );
        return CusLazyLoadScrollView(
          child: value.loading && !value2.bottomLoadingComingSoon
              ? const Progress()
              : child,
          onEndOfPage: () =>
              Future.microtask(() => value.getMoreUpcomingRes(context)),
          isLoading: value2.bottomLoadingComingSoon,
        );
      },
    );
  }
}
