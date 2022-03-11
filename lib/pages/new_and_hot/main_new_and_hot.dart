import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_cus_app_bar.dart';
import 'package:netfilx_clone/core/widgets/progress.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/models/upcoming_model/upcoming_model.dart';
import 'package:netfilx_clone/network/main_network.dart';
import 'package:netfilx_clone/providers/hn_lazy_loader_pro/hn_lazy_loader_pro.dart';
import 'package:netfilx_clone/providers/hot_new_provider/hot_new_pro.dart';
import 'package:provider/provider.dart';

import 'coming_soon/main_coming_soon.dart';
import 'everyone_watching/main_everyone.dart';
import 'widget/hn_top_btn.dart';

enum BtnState {
  comingSoon,
  everyoneWatching,
}
ValueNotifier<BtnState> btnState = ValueNotifier(BtnState.comingSoon);

class MainNewAndHot extends StatefulWidget {
  const MainNewAndHot({Key? key}) : super(key: key);

  @override
  State<MainNewAndHot> createState() => _MainNewAndHotState();
}

class _MainNewAndHotState extends State<MainNewAndHot> {
  @override
  void initState() {
    var pro = context.read<HotAndNewProvider>();
    var lazy = context.read<HotAndNewLazyLoaderPro>();
    Future.wait([
      Future.microtask(() {
        lazy.setDefaultValueOfComingSoon();
        pro.getUpcomingRes();
      }),
      Future.microtask(() {
        lazy.setDefaultValueOfNowPlaying();
        pro.getNowPlayingRes();
      }),
      // pro.getNowPlayingRes(),
    ]);
    super.initState();
  }

  @override
  void dispose() {
    cancelRequest();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: CusAppBar(
            title: "New & Hot",
          ),
        ),
        body: ValueListenableBuilder(
          valueListenable: btnState,
          builder: (context, BtnState v, w) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NHTopBtn(
                      val: BtnState.comingSoon,
                      state: v,
                      title: "Coming Soon",
                      onTap: () => btnState.value = BtnState.comingSoon,
                    ),
                    NHTopBtn(
                      val: BtnState.everyoneWatching,
                      state: v,
                      title: "Everyone's Watching",
                      onTap: () => btnState.value = BtnState.everyoneWatching,
                    ),
                  ],
                ),
                sizedBoxH10,
                Expanded(
                  child: v == BtnState.comingSoon
                      ? MainComingSoon()
                      : MainEveroneWatching(),
                ),
              ],
            );
          },
        ));
  }
}
