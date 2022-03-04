import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class HomeTopTextBtn extends StatelessWidget {
  const HomeTopTextBtn({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onTap(),
        child: Text(
          title,
          style: homeTextStyle,
        ));
  }
}
