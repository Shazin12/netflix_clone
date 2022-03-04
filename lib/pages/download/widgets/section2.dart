import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class Section2Text extends StatelessWidget {
  const Section2Text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
        ),
        sizedBoxH10,
        const Text(
          "We'll download a personaised selection of \n movies and shows for you, so thers's \n always somethimg to watch on your \n device.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
