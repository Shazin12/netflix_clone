import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class CusAppBar extends StatelessWidget {
  const CusAppBar({Key? key, this.title = "", this.leftChild})
      : super(key: key);
  final String title;
  final Widget? leftChild;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        title.isEmpty
            ? leftChild!
            : Text(
                title,
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
        const Spacer(),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: const Icon(
              Icons.cast,
              size: 25,
            )),
        sizedBoxW10,
        InkWell(
          child: Container(
            width: 26,
            height: 26,
            color: Colors.blueAccent,
          ),
          onTap: () {},
        ),
        sizedBoxW10
      ],
    );
  }
}
