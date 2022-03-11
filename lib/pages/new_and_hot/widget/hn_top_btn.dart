import 'package:flutter/material.dart';
import 'package:netfilx_clone/pages/new_and_hot/main_new_and_hot.dart';

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
  final BtnState val;
  final BtnState state;

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
