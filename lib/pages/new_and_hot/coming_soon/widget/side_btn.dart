import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/icon_text_btn_col.dart';

class HNSideBtn extends StatelessWidget {
  const HNSideBtn({
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
            icon: Icons.notifications_none_rounded,
            iconSize: 24,
            title: "Remaind Me",
            fontWeight: FontWeight.w400,
            textSize: 13,
            onTap: () async {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconAndTextColBtn(
            icon: Icons.info_outline_rounded,
            iconSize: 24,
            title: "Info",
            fontWeight: FontWeight.w400,
            textSize: 13,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
