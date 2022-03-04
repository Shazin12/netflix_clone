import 'package:flutter/material.dart';
import 'package:netfilx_clone/providers/search_pro.dart';
import 'package:provider/provider.dart';

class SearchCusConsumer extends StatelessWidget {
  const SearchCusConsumer({
    Key? key,
    required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      child: widget,
      builder: (context, value, child) =>
          value.isResult() ? child! : const SizedBox(height: 0, width: 0),
    );
  }
}
