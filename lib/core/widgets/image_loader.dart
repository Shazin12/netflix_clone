import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class ImageLoader extends StatelessWidget {
  const ImageLoader({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "$imageUrl$img",
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return const Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, object, stacktree) {
        return const Center(
          child: Text("ERROR"),
        );
      },
      fit: BoxFit.fill,
    );
  }
}