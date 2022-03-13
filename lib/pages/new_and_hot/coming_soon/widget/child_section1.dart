import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:netfilx_clone/models/upcoming_model/upcoming_model.dart';
import 'package:netfilx_clone/pages/new_and_hot/widget/cus_inview_notifier.dart';

import 'main_coming_soon_child.dart';

class ComingSoonSection1 extends StatelessWidget {
  const ComingSoonSection1({
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
      builder: (BuildContext _, int index) {
        var data = value[index];
        return InViewNotifierWidget(
          id: index.toString(),
          builder: (_, inView, w) {
            // Future.delayed(const Duration(seconds: 3), () {
            //   inView
            //       ? context
            //           .read<IsInViewProvider>()
            //           .setIsInView(value[index].movie.id.toString())
            //       : debugPrint("not in view 🪟🪟");
            // });
            Future.delayed(Duration.zero, () {});
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: MainComingSoonChild(
                upComingModel: data,
              ),
            );
          },
        );
      },
    );
  }
}
