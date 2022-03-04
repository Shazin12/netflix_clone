import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_theme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: bottomIndex,
        builder: (context, v, w) {
          return BottomNavigationBar(
            backgroundColor: kbgColors,
            type: BottomNavigationBarType.fixed,
            iconSize: 18,
            selectedLabelStyle:
                const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            currentIndex: v,
            onTap: (v) => bottomIndex.value = v,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white30,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_collection),
                label: "New & Hot",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions_outlined),
                label: "Fast Laughe",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.download_for_offline_outlined),
                label: "Download",
              ),
            ],
          );
        });
  }
}

ValueNotifier<int> bottomIndex = ValueNotifier(0);
