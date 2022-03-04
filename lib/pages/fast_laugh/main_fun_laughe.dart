import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/mute_button.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

class MainFunLaughe extends StatelessWidget {
  const MainFunLaughe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController();
    return PageView(
      allowImplicitScrolling: true,
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: const [
        FunLaugheChild(color: Colors.red),
        FunLaugheChild(color: Colors.yellow),
        FunLaugheChild(color: Colors.green),
      ],
    );
  }
}

class FunLaugheChild extends StatelessWidget {
  const FunLaugheChild({
    Key? key,
    this.color = Colors.white,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Stack(
      children: [
        Container(
          width: media.size.width,
          height: media.size.height,
          color: color,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(bottom: 12, left: 12),
            child: MuteButton(),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CircleAvatar(),
                sizedBoxH10,
                sizedBoxH10,
                const BackGroundShadow(
                    child: Icon(Icons.emoji_emotions_rounded)),
                const SideIconsText(title: "10k"),
                sizedBoxH10,
                const BackGroundShadow(
                  child: Icon(
                    Icons.add,
                    size: 28,
                  ),
                ),
                const SideIconsText(title: "My List"),
                sizedBoxH10,
                const BackGroundShadow(
                  child: Icon(
                    Icons.share_outlined,
                    size: 23,
                  ),
                ),
                const SideIconsText(title: "Share"),
                sizedBoxH10,
                const BackGroundShadow(
                    child: Icon(
                  Icons.play_arrow_rounded,
                  size: 40,
                )),
                const SideIconsText(title: "Play"),
                sizedBoxH10,
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SideIconsText extends StatelessWidget {
  const SideIconsText({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
    );
  }
}

class BackGroundShadow extends StatelessWidget {
  const BackGroundShadow({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 10,
          height: 15,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.9),
                  blurRadius: 20,
                  spreadRadius: 0.1,
                  offset: const Offset(12, 15)),
            ],
          ),
        ),
        child
      ],
    );
  }
}
