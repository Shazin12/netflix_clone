import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DownLoadCusButton extends StatelessWidget {
  const DownLoadCusButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  }) : super(key: key);
  final String title;
  final Function onPressed;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 13),
      color: bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      onPressed: () async {
        //  print("object");
        var dio = Dio();
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w800,
          color: textColor,
        ),
      ),
    );
  }
}
