import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_color.dart';
import '../../components/gridview_items/grid_view.dart';
import '../../widgets/heading.dart';
import '../../widgets/headline.dart';
import '../../widgets/icon_button.dart';
import '../../components/category_labels/label_list.dart';
import '../../widgets/search_bar.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const SizedBox(height: 28.0),
            const HeadingText(
              align: TextAlign.left,
              color: BLACK,
              text: 'What do you want\nto cook today?',
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SearchBar()),
                  const SizedBox(width: 10.0),
                  const Ico()
                ],
              ),
            ),
            const SizedBox(height: 28.0),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeadLine(
                      color: BLACK,
                      text: 'Category',
                    ),
                    SizedBox(height: 40, child: LabelList()),
                    const SizedBox(height: 28.0),
                    const HeadLine(
                      color: BLACK,
                      text: 'Treanding Recipe',
                    ),
                    const GridList()
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}


