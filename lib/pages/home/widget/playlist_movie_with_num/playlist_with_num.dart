import 'package:flutter/material.dart';

import 'num_card.dart';

class PlayListWithNum extends StatelessWidget {
  const PlayListWithNum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, i) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: NumCard(i: i),
      ),
    );
  }
}
