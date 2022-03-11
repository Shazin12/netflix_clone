// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HotandNewVideoBottomBtn extends StatelessWidget {
  const HotandNewVideoBottomBtn({
    Key? key,
    required this.textboxwidth,
    required this.topBtnChild,
  }) : super(key: key);

  final double textboxwidth;
  final Widget topBtnChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: textboxwidth,
      color: Colors.blueAccent,
      child: topBtnChild,
    );
  }
}
