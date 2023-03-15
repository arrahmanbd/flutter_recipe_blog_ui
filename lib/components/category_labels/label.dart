import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_color.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            color: BLACK, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: WHITE,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
