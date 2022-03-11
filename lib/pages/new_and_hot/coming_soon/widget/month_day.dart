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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateText(
            title: month.toUpperCase(),
            isMonth: true,
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
    this.isMonth = false,
    this.color = Colors.white,
  }) : super(key: key);
  final String title;
  final bool isMonth;
  final double size;
  final FontWeight weight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      isMonth ? _monthConverter(title) : title,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

String _monthConverter(String numMonth) {
  switch (numMonth) {
    case "1":
      return "JAN";
    case "2":
      return "FEB";
    case "3":
      return "MAR";
    case "4":
      return "APR";
    case "5":
      return "MAY";
    case "6":
      return "JUN";
    case "7":
      return "JUL";
    case "8":
      return "AUG";
    case "9":
      return "SEP";
    case "10":
      return "OCT";
    case "11":
      return "NOV";
    case "12":
      return "DEC";
    default:
      return "";
  }
}
