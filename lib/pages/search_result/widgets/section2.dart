import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/image_loader.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class SearchResImgShow extends StatelessWidget {
  const SearchResImgShow({
    Key? key,
    required this.img,
  }) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: ImageLoader(img: img),
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(6),
        // image: DecorationImage(
        //     fit: BoxFit.fill, image: NetworkImage("$imageUrl$img")),
      ),
    );
  }
}
