import 'package:flutter/material.dart';
import 'package:kantongilmu/components/bottom_nav_bar_data.dart';
import 'package:kantongilmu/services/auth.dart';

class MainPage extends StatefulWidget {
  static String id = 'main_page';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final AuthService _user = AuthService();
  final List<Widget> _childPages = pages;
  int _currentIndex = NavBarIndex.home.index;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = NavBarIndex.values.elementAt(index).index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _childPages.elementAt(_currentIndex),
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
