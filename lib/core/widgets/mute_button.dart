import 'package:flutter/material.dart';

ValueNotifier<bool> needVol = ValueNotifier(false);

class MuteButton extends StatelessWidget {
  const MuteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      child: IconButton(
        onPressed: () {
          needVol.value = !needVol.value;
        },
        icon: ValueListenableBuilder(
          valueListenable: needVol,
          builder: (context, bool val, widget) {
            return Icon(
                !val ? Icons.volume_off_rounded : Icons.volume_up_rounded,
                size: 20);
          },
        ),
      ),
    );
  }
}
