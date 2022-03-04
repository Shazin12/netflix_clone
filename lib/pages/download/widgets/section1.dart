import 'package:flutter/material.dart';

class Section1Icon extends StatelessWidget {
  const Section1Icon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.settings_outlined, size: 18),
        SizedBox(width: 10),
        Text("Smart Downloads", style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
