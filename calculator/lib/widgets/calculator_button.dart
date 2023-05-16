import 'package:flutter/material.dart';

class MyCalculatorBuntton extends StatelessWidget {
  const MyCalculatorBuntton(
      {super.key,
      required this.onPress,
      required this.buttonTitle,
      this.fontSize = 36,
      this.buttonColor});

  final VoidCallback onPress;
  final double fontSize;
  final String buttonTitle;
  final Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: onPress,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: buttonColor),
              height: 70,
              width: 70,
              child: Center(
                child: Text(
                  buttonTitle,
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
//salam