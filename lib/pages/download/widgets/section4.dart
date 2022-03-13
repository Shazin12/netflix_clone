import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

import 'cus_button.dart';

class Sectin4Button extends StatelessWidget {
  const Sectin4Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        DownLoadCusButton(
          textColor: Colors.white,
          bgColor: Colors.blue.shade700,
          title: "Set Up",
          onPressed: () {},
        ),
        sizedBoxH10,
        sizedBoxH10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: DownLoadCusButton(
            textColor: Colors.black,
            bgColor: Colors.white,
            title: "See What You Can Download",
            onPressed: () async {},
          ),
        ),
      ],
    );
  }
}
