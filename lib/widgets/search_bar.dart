import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_blog/constants/app_color.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(top: 20, bottom: 28),
        decoration: BoxDecoration(
          color: WHITE,
          borderRadius: BorderRadius.circular(10),
        ),
        // ignore: prefer_const_constructors
        child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: SvgPicture.asset("assets/icons_search.svg"),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Find delicious recipe here",
                      hintStyle: TextStyle(
                        color: GRAY,
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      // surffix isn't working properly  with SVG
                      // thats why we use row
                      // prefixIcon: Container(height: 4,width:4,child: SvgPicture.asset("assets/icons_search.svg",)),
                    ),
                  ),
                ),
              ],
            )));
  }
}
