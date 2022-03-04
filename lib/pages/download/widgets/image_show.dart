import 'package:flutter/material.dart';

class ImageShow extends StatelessWidget {
  const ImageShow(
      {Key? key,
      required this.imageUrl,
      required this.size,
      required this.angle,
      required this.padding})
      : super(key: key);
  final String imageUrl;
  final Size size;
  final double angle;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Transform.rotate(
        angle: angle,
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: Colors.black, blurRadius: 1),
                BoxShadow(color: Colors.black, blurRadius: 1),
              ],
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
      ),
    );
  }
}
