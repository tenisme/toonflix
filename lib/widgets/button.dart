import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor, textColor;

  const Button({
    super.key,
    required this.text,
    this.bgColor = const Color(0xFFF2B33A),
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
