import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_theme.dart';
import 'package:netfilx_clone/network/search_network/search_network.dart';
import 'package:netfilx_clone/providers/search_pro.dart';
import 'package:provider/provider.dart';
import 'search_cus_consumer.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BorderRadius radius = BorderRadius.circular(8);
    final _controller = TextEditingController();
    return TextField(
      controller: _controller,
      cursorColor: kgreyShade500,
      decoration: InputDecoration(
        prefixIcon: SearchCusConsumer(
          widget: Icon(
            Icons.search_sharp,
            color: kgreyShade500,
          ),
        ),
        fillColor: Colors.grey.shade900,
        filled: true,
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kgreyShade500),
          borderRadius: radius,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: radius,
        ),
        border: OutlineInputBorder(borderRadius: radius),
        suffixIcon: SearchCusConsumer(
          widget: IconButton(
            icon: Icon(
              Icons.cancel_rounded,
              color: kgreyShade500,
            ),
            onPressed: () {
              _controller.clear();
              context.read<SearchProvider>().setData('');
            },
          ),
        ),
      ),
      onChanged: (v) {},
      onEditingComplete: () {
        var v = _controller.text;
        var _pro = context.read<SearchProvider>();
        _pro.setData(v);
        _pro.getSearchRes(v);
      },
    );
  }
}
