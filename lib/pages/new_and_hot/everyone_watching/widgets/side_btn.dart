import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/icon_text_btn_col.dart';

class EveyOneSideBtn extends StatelessWidget {
  const EveyOneSideBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconAndTextColBtn(
            icon: Icons.share_outlined,
            iconSize: 24,
            title: "Share",
            fontWeight: FontWeight.w400,
            textSize: 13,
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconAndTextColBtn(
            icon: Icons.add,
            iconSize: 28,
            title: "My List",
            fontWeight: FontWeight.w400,
            textSize: 13,
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconAndTextColBtn(
            icon: Icons.play_arrow,
            iconSize: 30,
            title: "Play",
            fontWeight: FontWeight.w400,
            textSize: 13,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
