import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';

import '../../../../models/upcoming_model/upcoming_model.dart';
import '../../widget/cus_inview_notifier.dart';
import 'main_child.dart';

class NowPlayingSection1 extends StatelessWidget {
  const NowPlayingSection1({
    Key? key,
    required this.value,
    required this.controller,
  }) : super(key: key);
  final List<HotAndNewModel> value;

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return CusInViewNotifier(
      controller: controller,
      count: value.length,
      builder: (BuildContext _, int index) => InViewNotifierWidget(
        id: "$index",
        builder: (context, bool inview, w) {
          // Future.delayed(const Duration(seconds: 3), () {
          //   inview
          //       ? context
          //           .read<IsInViewProvider>()
          //           .setIsInView(value[index].movie.id.toString())
          //       : debugPrint("not in view 🪟🪟");
          // });
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: EveryoneWatchChild(nowPlayingModel: value[index]),
          );
        },
      ),
    );
  }
}
