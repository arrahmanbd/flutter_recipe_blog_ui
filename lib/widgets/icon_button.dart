import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_color.dart';
class Ico extends StatelessWidget {
  const Ico({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: PRIMARY,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/category.svg",color:WHITE),
        )));
  }
}