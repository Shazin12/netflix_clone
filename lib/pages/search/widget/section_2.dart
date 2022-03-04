import 'package:flutter/material.dart';

class Section2SearchText extends StatelessWidget {
  const Section2SearchText({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
    );
  }
}
