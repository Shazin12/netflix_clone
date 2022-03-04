// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/my_cus_app_bar.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';
import 'package:netfilx_clone/pages/new_&_hot/coming_soon/main_coming_soon.dart';
import 'package:netfilx_clone/pages/new_&_hot/everyone_watching/main_everyone.dart';

enum State {
  comingSoon,
  everyoneWatching,
}
ValueNotifier<State> btnState = ValueNotifier(State.comingSoon);

class MainNewAndHot extends StatelessWidget {
  const MainNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: CusAppBar(
          title: "New & Hot",
        ),
      ),
      body: ValueListenableBuilder(
          valueListenable: btnState,
          builder: (context, State v, w) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NHTopBtn(
                      val: State.comingSoon,
                      state: v,
                      title: "Coming Soon",
                      onTap: () => btnState.value = State.comingSoon,
                    ),
                    NHTopBtn(
                      val: State.everyoneWatching,
                      state: v,
                      title: "Everyone's Watching",
                      onTap: () => btnState.value = State.everyoneWatching,
                    ),
                  ],
                ),
                sizedBoxH10,
              
                Expanded(
                  child: v == State.comingSoon
                      ? const MainComingSoon()
                      : const MainEveroneWatching(),
                ),
              ],
            );
          }),
    );
  }
}

class NHTopBtn extends StatelessWidget {
  const NHTopBtn({
    Key? key,
    required this.title,
    required this.onTap,
    required this.val,
    required this.state,
  }) : super(key: key);
  final String title;
  final Function onTap;
  final State val;
  final State state;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      animationDuration: const Duration(seconds: 1),
      onPressed: () => onTap(),
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      color: val == state ? Colors.white : Colors.transparent,
      textColor: val == state ? Colors.black : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
