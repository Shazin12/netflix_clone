import 'package:flutter/material.dart';
import 'package:netfilx_clone/pages/home/widget/img_card.dart';

class PlayListChild extends StatelessWidget {
  const PlayListChild({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 13,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, i) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ImageCard(),
      ),
    );
  }
}
