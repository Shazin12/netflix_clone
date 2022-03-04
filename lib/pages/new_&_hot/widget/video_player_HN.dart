// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/mute_button.dart';

class HotAndNewVideoPlayer extends StatelessWidget {
  const HotAndNewVideoPlayer({
    Key? key,
    required this.textboxwidth,
    required this.textboxHeight,
  }) : super(key: key);

  final double textboxwidth;
  final double textboxHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: textboxwidth,
      height: textboxHeight,
      child: Stack(
        children: [
          Container(
            color: Colors.orangeAccent,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: MuteButton(),
            ),
          ),
        ],
      ),
    );
  }
}
