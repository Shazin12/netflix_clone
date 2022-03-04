// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class HotAndNewDes extends StatelessWidget {
  const HotAndNewDes({
    Key? key,
    required this.pasingwidth,
  }) : super(key: key);

  final double pasingwidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Movie Title",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        sizedBoxH10,
        LimitedBox(
          maxWidth: pasingwidth,
          maxHeight: 200,
          child: const Text(
            des,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
