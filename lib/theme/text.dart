import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModifiedText extends StatelessWidget {
  const ModifiedText(
      {super.key,
      required this.text,
      required this.color,
      required this.style,
      required this.size});

  final String text;
  final Color color;
  final FontStyle style;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(text,
    style:GoogleFonts.mada(
      fontStyle: style, color: color, fontSize: size
    ));
  }
}
