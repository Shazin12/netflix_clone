
import 'package:flutter/material.dart';

class HomePlayButton extends StatelessWidget {
  const HomePlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: TextButton.icon(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: () {},
          icon: const Icon(
            Icons.play_arrow,
            size: 30,
            color: Colors.black,
          ),
          label: const Padding(
            padding: EdgeInsets.only(right: 8),
            child: Text(
              "Play",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
