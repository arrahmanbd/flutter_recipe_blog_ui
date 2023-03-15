import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    Key? key,
    required this.text,
    required this.color,
    required this.align,
  }) : super(key: key);
  final String text;
  final Color color;
  final TextAlign align;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.lato(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}
