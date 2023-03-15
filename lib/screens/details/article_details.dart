import 'package:flutter/material.dart';

import 'package:recipe_blog/constants/app_color.dart';

import '../../components/custom_appbar/appbar.dart';
import '../../widgets/buttons.dart';
import '../../widgets/headline.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            children: [
              const SizedBox(height: 10.0),
              const DetailsAppBar(),
              const SizedBox(height: 20.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          height: 171,
                          decoration: BoxDecoration(
                            color: GRAY,
                            borderRadius: BorderRadius.circular(20),
                          )),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        height: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                             const Flexible(
                                child: HeadLine(
                              color: BLACK,
                              text:
                              'How to Create a Container in flutter. Easy Method',
                            ),),
                            const SizedBox(height: 5.0),
                            const Text('35 Min | 3 Serving')
                          ],
                        ),
                      ),
                      const HeadLine(
                        color: BLACK,
                        text:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis felis vitae turpis venenatis porta. Fusce at porttitor nibh. Donec id neque ac eros finibus rutrum non vel quam.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis felis vitae turpis venenatis porta. Fusce at porttitor nibh. Donec id neque ac eros finibus rutrum non vel quam.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis felis vitae turpis venenatis porta. Fusce at porttitor nibh. Donec id neque ac eros finibus rutrum non vel quam.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis felis vitae turpis venenatis porta. Fusce at porttitor nibh. Donec id neque ac eros finibus rutrum non vel quam.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis felis vitae turpis venenatis porta. Fusce at porttitor nibh. Donec id neque ac eros finibus rutrum non vel quam.',
                      ),
                      const AppButton(),
                      const SizedBox(height: 20.0),
                      const HeadLine(text: '--- Thanks For Reading ---', color: PRIMARY,),
                      const SizedBox(height: 20.0),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
