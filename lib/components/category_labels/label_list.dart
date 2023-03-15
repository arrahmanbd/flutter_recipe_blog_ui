import 'package:flutter/material.dart';
import 'label.dart';

class LabelList extends StatelessWidget {
  LabelList({super.key});
  final List<String> cat = ['Main Course', 'Appitizer', 'Dessert', 'Dessert'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(right: 20),
          child: LabelButton(text: cat[index],),
        );
      },
    );
  }
}
