import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';
import '../screens/start_page.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const StartPage()));
      },
      child: Container(
        decoration: const BoxDecoration(
            color: BLACK, borderRadius: BorderRadius.all(Radius.circular(10))),
        width: 230,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get Started',
              style: GoogleFonts.poppins(
                color: WHITE,
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(width: 20.0),
            const Icon(
              Icons.arrow_right_alt_rounded,
              color: WHITE,
              size: 32,
            )
          ],
        ),
      ),
    );
  }
}
