import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_cus_app_bar.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

import 'widgets/section1.dart';
import 'widgets/section2.dart';
import 'widgets/section3.dart';
import 'widgets/section4.dart';

class MainDownloadPage extends StatelessWidget {
  MainDownloadPage({Key? key}) : super(key: key);

  final List<Widget> wid = [
    sizedBoxH10,
    const Section1Icon(),
    sizedBoxH10,
    sizedBoxH10,
    const Section2Text(),
    const Section3Center(),
    sizedBoxH10,
    sizedBoxH10,
    const Sectin4Button(),
    sizedBoxH10,
    sizedBoxH10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: CusAppBar(title: "Download")),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        itemCount: wid.length,
        itemBuilder: (_,i) => wid[i],
      ),
    );
  }
}
