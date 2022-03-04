import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/search/widget/section_2.dart';

import 'widgets/section1.dart';

class MainSearchResult extends StatelessWidget {
  const MainSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Section2SearchText(title: "Movies & TV"),
        sizedBoxH10,
        sizedBoxH10,
        const SearchResChild()
      ],
    );
  }
}
