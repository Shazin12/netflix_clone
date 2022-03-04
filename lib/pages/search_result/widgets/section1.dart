import 'package:flutter/material.dart';
import 'package:netfilx_clone/pages/search_result/widgets/section2.dart';
import 'package:netfilx_clone/providers/search_pro.dart';
import 'package:provider/provider.dart';

class SearchResChild extends StatelessWidget {
  const SearchResChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchPro = context.watch<SearchProvider>();
    double spacing = 8.0;
    return Expanded(
      child: GridView.builder(
        itemCount: searchPro.searchedResult.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: spacing,
          mainAxisSpacing: spacing,
          childAspectRatio: 1.5 / 2,
        ),
        itemBuilder: (_, i) => const SearchResImgShow(),
      ),
    );
  }
}
