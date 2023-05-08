import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class CaltulatorButton extends StatelessWidget {
  const CaltulatorButton(
      {super.key,
      required this.text,
      this.fillColor,
      this.textColor,
      this.textSize,
      this.onPress});
  final String text;
  final Color? fillColor;
  final int? textColor;
  final double? textSize;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: fillColor,
      child: SizedBox(
          height: 70,
          width: 70,
          child: ElevatedButton(
            onPressed: onPress,
            child: Text(
              text,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: textSize),
              ),
            ),
          )),
    );
  }
}
