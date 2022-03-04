import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class PlayListMovies extends StatelessWidget {
  const PlayListMovies({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
          ),
        ),
        sizedBoxH10,
        LimitedBox(
          maxHeight: 160,
          child: child,
        )
      ],
    );
  }
}
