import 'package:flutter/material.dart';
import 'package:kantongilmu/components/bottom_nav_bar_data.dart';

///[MainPage] is the root of the page
///consist [bottomNavigationBar]

class MainPage extends StatefulWidget {
  static String id = 'main_page';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _childPages = pages;
  int _currentIndex = NavBarIndex.home.index;

  ///start up index

  ///[onTabTapped] to change [_currentIndex] of [bottomNavigationBar]
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = NavBarIndex.values.elementAt(index).index;
    });
  }

  @override
  Widget build(BuildContext context) {
//    return ChangeNotifierProvider();
    return SafeArea(
      child: Scaffold(
        body: _childPages.elementAt(_currentIndex),

        ///opens page based index in [_childPages]
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: kBottomNavBarItems,
        ),
      ),
    );
  }
}
