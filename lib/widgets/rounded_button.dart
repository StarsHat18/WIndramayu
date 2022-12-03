import 'package:flutter/material.dart';
import 'package:windramayu/colors.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = CLight,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 42,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: (){press.call();} ,
          child: Text(
            text,
            style: TextStyle (
                fontSize: 15, fontWeight: FontWeight.w600, color: textColor),
          ),
        ),
      ),
    );
  }
}