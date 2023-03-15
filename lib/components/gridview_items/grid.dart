import 'package:flutter/material.dart';
import 'package:recipe_blog/constants/app_color.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 127,
            width: 162,
            decoration: BoxDecoration(
                color: GRAY, borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(height: 10.0),
          const Text('Biriyani',style: TextStyle(fontSize: 15),),
          const SizedBox(height: 2.0),
          const Text('30 Min | 1 Serving',style: TextStyle(fontSize: 13),),
        ],
      ),
    );
  }
}
