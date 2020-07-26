import 'package:flutter/material.dart';
import 'package:kantongilmu/components/bottom_nav_bar_data.dart';
import 'package:kantongilmu/components/profile_drawer.dart';

///[MainPage] is the root of the page
///consist [bottomNavigationBar]

class MainPage extends StatefulWidget {
  static String id = 'main_page';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = NavBarIndex.home.index;

  ///[onTabTapped] to change [_currentIndex] of [bottomNavigationBar]
  void onTabTapped(int index) {
    setState(() => _currentIndex = NavBarIndex.values.elementAt(index).index);
  }

  @override
  Widget build(BuildContext context) {
//    return ChangeNotifierProvider();
    return SafeArea(
      child: Scaffold(
        appBar: pagesAppBar.elementAt(_currentIndex),
        endDrawer:
            _currentIndex == NavBarIndex.profile.index ? ProfileDrawer() : null,
        body: pagesBody.elementAt(_currentIndex),

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
