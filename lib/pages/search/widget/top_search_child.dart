import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/image_loader.dart';
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
          Stack(
            children: [
              Container(
                height: 140,
                width: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: ImageLoader(img: imgUrl),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1), borderRadius: BorderRadius.circular(6)),
              ),
              Container(
                height: 140,
                width: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: ImageLoader(img: imgUrl),
                ),
                decoration: BoxDecoration(
                    color: Colors.transparent, borderRadius: BorderRadius.circular(6)),
              ),
            ],
          ),
          sizedBoxW10,
          // movie name
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),

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
