import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/home/widget/img_card.dart';

class NumCard extends StatelessWidget {
  const NumCard({
    Key? key,
    required this.i,
  }) : super(key: key);
  final int i;

  @override
  Widget build(BuildContext context) {
    var n = (1 + i).toString();
    return Stack(
      children: [
        Row(
          children: [
            if (n.length == 2) sizedBoxW10,
            sizedBoxW10,
            sizedBoxW10,
            sizedBoxW10,
            sizedBoxW10,
            sizedBoxW10,
            sizedBoxW10,
            const ImageCard(),
          ],
        ),
        Positioned(
          top: 26,
          right: n.length == 1 ? 80 : 60,
          child: BorderedText(
            strokeColor: Colors.white,
            child: Text(
              n,
              style: const TextStyle(fontSize: 120, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
