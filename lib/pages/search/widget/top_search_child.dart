
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class TopSearchChild extends StatelessWidget {
  const TopSearchChild({
    Key? key,
    required this.title,
    required this.imgUrl,
    required this.onTapIcon,
  }) : super(key: key);
  final String title;
  final String imgUrl;
  final Function onTapIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // movie image
          Container(
            padding: EdgeInsets.zero,
            height: 55,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(3)),
          ),
          sizedBoxW10,
          // movie name
          const Text(
            "Movie Name",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          // play icon buttion
          IconButton(
              splashRadius: 20,
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Center(
                child: Icon(
                  Icons.play_circle_outline_rounded,
                  size: 34,
                ),
              )),
          sizedBoxW10,
          sizedBoxW10,
        ],
      ),
    );
  }
}
