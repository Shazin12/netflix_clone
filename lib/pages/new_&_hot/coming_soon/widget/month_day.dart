import 'package:flutter/material.dart';

class MonthAndDate extends StatelessWidget {
  const MonthAndDate({
    Key? key,
    required this.textboxwidth,
    required this.textboxHeight,
    required this.month,
    required this.day,
  }) : super(key: key);

  final double textboxwidth;
  final double textboxHeight;
  final String month;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      padding: const EdgeInsets.only(right: 10),
      margin: EdgeInsets.zero,
      width: textboxwidth,
      height: textboxHeight,
      child: Column(
        children: [
          DateText(
            title: month.toUpperCase(),
            size: 14,
            weight: FontWeight.w500,
            color: Colors.grey,
          ),
          DateText(
            title: day.toUpperCase(),
            size: 21,
            weight: FontWeight.w800,
          ),
        ],
      ),
    );
  }
}

class DateText extends StatelessWidget {
  const DateText({
    Key? key,
    required this.title,
    required this.size,
    required this.weight,
    this.color = Colors.white,
  }) : super(key: key);
  final String title;
  final double size;
  final FontWeight weight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
