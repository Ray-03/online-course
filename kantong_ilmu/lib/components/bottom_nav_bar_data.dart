import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/pages/cart_page.dart';
import 'package:kantongilmu/pages/home_page.dart';
import 'package:kantongilmu/pages/library_page.dart';
import 'package:kantongilmu/pages/main_page.dart';
import 'package:kantongilmu/pages/profile_page.dart';
import 'package:kantongilmu/pages/search_page.dart';

///[kBottomNavBarItems] consist its icon and title
const kBottomNavBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    title: Text('home'),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search),
    title: Text('search'),
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.book),
    title: Text('library'),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart),
    title: Text('cart'),
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    title: Text('profile'),
  ),
];

enum NavBarIndex {
  home,
  search,
  library,
  cart,
  profile,
}

///[pages] to store each pages in [BottomNavigationBar][MainPage]
final pages = [
  HomePage(),
  SearchPage(),
  LibraryPage(),
  CartPage(),
  ProfilePage(),
];
