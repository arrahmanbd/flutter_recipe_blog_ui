import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import '../constants/app_color.dart';
import '../constants/navbar_tabs.dart';
import 'details/article_details.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: WHITE, statusBarColor: BLACK));
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: listOfWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: WHITE,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          boxShadow: [
            BoxShadow(
              color: GRAY.withOpacity(0.4),
              spreadRadius: 10,
              blurRadius: 15,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: SlidingClippedNavBar.colorful(
            backgroundColor: Colors.white,
            onButtonPressed: onButtonPressed,
            iconSize: 30,
            // activeColor: const Color(0xFF01579B),
            selectedIndex: selectedIndex,
            barItems: <BarItem>[
              BarItem(
                icon: Icons.event,
                title: 'Home',
                activeColor: PRIMARY,
                inactiveColor: GRAY,
              ),
              BarItem(
                icon: Icons.favorite,
                title: 'Favorite',
                activeColor: Colors.purple,
                inactiveColor: GRAY,
              ),
              BarItem(
                icon: Icons.inbox,
                title: 'Inbox',
                activeColor: Colors.blue,
                inactiveColor: GRAY,
              ),
              BarItem(
                icon: Icons.account_circle,
                title: 'Account',
                activeColor: Colors.cyan,
                inactiveColor: GRAY,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
