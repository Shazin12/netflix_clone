import 'package:flutter/material.dart';
import 'package:netfilx_clone/core/widgets/shortcut_widget.dart';

import 'home_top_txt_btn.dart';

class HomeTop2Btn extends StatelessWidget {
  const HomeTop2Btn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          sizedBoxW10,
          HomeTopTextBtn(
            title: "TV Shows",
            onTap: () {},
          ),
          HomeTopTextBtn(
            title: "Movies",
            onTap: () {},
          ),
          DropdownButton<String>(
              hint: const Text(
                "Categories",
                style: homeTextStyle,
              ),
              underline: Container(),
              icon: const Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: Colors.white,
              ),
              // value:  "Movies1",

              items: const [
                DropdownMenuItem(
                  child: Text(
                    "Movie 1",
                    style: homeTextStyle,
                  ),
                  value: "1",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Movie 2",
                    style: homeTextStyle,
                  ),
                  value: "2",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Movie 3",
                    style: homeTextStyle,
                  ),
                  value: "3",
                ),
              ],
              onChanged: (v) {}),
          sizedBoxW10,
        ],
      ),
      decoration: const BoxDecoration(
        // color: Colors.black,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.transparent,
          ],
        ),
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 60, offset: Offset(0, 10)),
          BoxShadow(color: Colors.black, blurRadius: 50, offset: Offset(0, 20)),
        ],
      ),
    );
  }
}
