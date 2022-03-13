import 'package:flutter/material.dart';
import 'package:inview_notifier_list/inview_notifier_list.dart';

class CusInViewNotifier extends StatelessWidget {
  const CusInViewNotifier({
    Key? key,
    required this.count,
    required this.builder,
    required this.controller,
  }) : super(key: key);

  final int count;
  final ScrollController controller;
  final Widget Function(BuildContext context, int index) builder;
  @override
  Widget build(BuildContext context) {
    return InViewNotifierList(
      controller: controller,
      isInViewPortCondition:
          (double deltaTop, double deltaBottom, double vpHeight) {
        return (deltaTop < (0.5 * vpHeight) &&
            deltaBottom > (0.5 * vpHeight));
      },
      shrinkWrap: true,
      itemCount: count,
      // physics: const NeverScrollableScrollPhysics(),
      builder: (BuildContext context, int index) => builder(context, index),
    );
  }
}
