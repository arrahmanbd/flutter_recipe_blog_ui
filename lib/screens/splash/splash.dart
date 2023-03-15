import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_blog/screens/start_page.dart';

import '../../constants/app_color.dart';
import '../../widgets/buttons.dart';
import '../../widgets/heading.dart';
import '../../components/category_labels/label.dart';

class Splash extends StatefulWidget {
  Splash({super.key});

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: BLACK, statusBarColor: BLACK));
  }

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: WHITE,
              child: Image.asset(
                // height: mq.height * .5,
                'assets/illustration/ill1.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            height: mq.height * .5,
            width: mq.width,
            decoration: BoxDecoration(
              color: PRIMARY,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(mq.width * .4),
                  topRight: Radius.circular(mq.width * .4)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Padding(
              padding: const EdgeInsets.all(31.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HeadingText(
                    align: TextAlign.center,
                    color: WHITE,
                    text: 'Wanna Cook\n Something Delicious?',
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    textAlign: TextAlign.center,
                    'Let’s try our best recipe\n simple to made and tasty',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: WHITE,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  AppButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
