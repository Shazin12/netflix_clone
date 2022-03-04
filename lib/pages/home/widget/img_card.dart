
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
              image: NetworkImage(img1), fit: BoxFit.fill)),
    );
  }
}
