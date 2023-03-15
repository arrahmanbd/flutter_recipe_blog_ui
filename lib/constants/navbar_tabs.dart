import 'package:flutter/material.dart';

import '../screens/details/article_details.dart';
import '../screens/home/home_page.dart';

List<Widget> listOfWidget = <Widget>[
  const Home(),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.search,
      size: 56,
      color: Colors.brown,
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: const Icon(
      Icons.bolt,
      size: 56,
      color: Colors.brown,
    ),
  ),
  const DetailsPage()
];
