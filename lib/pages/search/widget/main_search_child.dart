import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/search/widget/section_2.dart';
import 'package:netfilx_clone/pages/search/widget/top_search_child.dart';

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
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (_, i) =>
                TopSearchChild(title: "", imgUrl: "", onTapIcon: () {}),
          ),
        )
      ],
    );
  }
}
