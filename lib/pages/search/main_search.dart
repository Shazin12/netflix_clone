import 'package:flutter/material.dart';
import 'package:netfilx_clone/pages/search/widget/search_text_field/search_text_field.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/search_result/main_search_res.dart';
import 'package:netfilx_clone/providers/search_pro.dart';
import 'package:provider/provider.dart';

import 'widget/main_search_child.dart';

class MainSearch extends StatelessWidget {
  const MainSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxH10,
          const SearchTextField(),
          sizedBoxH10,
          sizedBoxH10,
          Consumer<SearchProvider>(builder: (context, value, child) {
            return Expanded(
              child: MainSearchResult(),
              // child: value.isResult()
              //     ? const MainSearchResult()
              //     : const MianSearchChild(),
            );
          })
        ],
      ),
    );
  }
}
