import 'package:flutter/material.dart';
import 'package:netfilx_clone/pages/download/main_download.dart';
import 'package:netfilx_clone/pages/fast_laugh/main_fun_laughe.dart';
import 'package:netfilx_clone/pages/home/main_home.dart';
import 'package:netfilx_clone/pages/my_app/widget/nav_bar.dart';
import 'package:netfilx_clone/pages/new_&_hot/main_new_&_hot.dart';
import 'package:netfilx_clone/pages/search/main_search.dart';

class MyHome extends StatelessWidget {
  MyHome({Key? key}) : super(key: key);

  final List<Widget> listPages = [
    const MainHome(),
    // MainSearch(),
    // // MainDownloadPage(),
    const MainNewAndHot(),
    const MainFunLaughe(),
    // MainDownloadPage(),
    const MainSearch(),
    MainDownloadPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        body: ValueListenableBuilder(
          valueListenable: bottomIndex,
          builder: (_, int v, w) => listPages[v],
        ));
  }
}
