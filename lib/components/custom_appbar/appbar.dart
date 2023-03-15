import 'package:flutter/material.dart';

import '../../constants/app_color.dart';
import '../../screens/start_page.dart';
import '../../widgets/headline.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconBut(
          fun: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const StartPage()));
          },
          ico: Icons.arrow_back_ios_new,
        ),
        const HeadLine(
          text: 'Details',
          color: BLACK,
        ),
        IconBut(
          fun: () {},
          ico: Icons.favorite_outline_outlined,
        ),
      ],
    );
  }
}

class IconBut extends StatelessWidget {
  const IconBut({
    Key? key,
    required this.ico,
    required this.fun,
  }) : super(key: key);
  final IconData ico;
  final VoidCallback fun;
  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 34,
        // width: 34,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: WHITE,
          boxShadow: [
            BoxShadow(
              color: GRAY.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        // height: 34,
        // width: 34,
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: IconButton(
              onPressed: fun,
              icon: Icon(
                ico,
                color: BLACK,
                size: 24,
              )),
        ));
  }
}
