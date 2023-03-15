import 'package:flutter/material.dart';
import 'package:recipe_blog/constants/app_color.dart';

import '../../screens/details/article_details.dart';


class GridList extends StatelessWidget {
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
      shrinkWrap: true,
      itemCount: 12,
      primary: false,
      itemBuilder: (BuildContext context, int i) {
        int num = i;
        return Card(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailsPage()));
            },
            child: Container(
              height: 207,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: GRAY, borderRadius: BorderRadius.circular(10)),
                      child: Image.network(
                        height: 127,
                        width: 132,
                        'https://picsum.photos/id/${num}/200/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Beef Tanderloin Steak',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        '30 Min | 2 Serving',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
