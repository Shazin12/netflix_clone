import 'package:flutter/material.dart';

class IconAndTextColBtn extends StatelessWidget {
  const IconAndTextColBtn({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.iconSize = 25,
    this.textSize = 14,
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.bold,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Function onTap;
  // size
  final double iconSize;
  final double textSize;
  // color
  final Color iconColor;
  final Color textColor;
  // fontweigth
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }
}
