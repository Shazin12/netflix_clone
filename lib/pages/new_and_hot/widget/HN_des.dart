// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class HotAndNewDes extends StatelessWidget {
  const HotAndNewDes({
    Key? key,
    required this.pasingwidth,
    required this.title,
    required this.description,
  }) : super(key: key);

  final double pasingwidth;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LimitedBox(
          maxWidth: pasingwidth,
          maxHeight: 100,
          child: Text(
            title,
            maxLines: 2,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis),
          ),
        ),
        sizedBoxH10,
        LimitedBox(
          maxWidth: pasingwidth,
          maxHeight: 200,
          child: Text(
            description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
