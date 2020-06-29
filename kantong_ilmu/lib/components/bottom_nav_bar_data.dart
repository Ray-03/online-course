import 'package:flutter/material.dart';
import 'package:kantongilmu/pages/cart_page.dart';
import 'package:kantongilmu/pages/home_page.dart';
import 'package:kantongilmu/pages/library_page.dart';
import 'package:kantongilmu/pages/profile_page.dart';
import 'package:kantongilmu/pages/search_page.dart';

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
    icon: Icon(Icons.library_books),
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

final pages = [
  HomePage(),
  SearchPage(),
  LibraryPage(),
  CartPage(),
  ProfilePage(),
];

enum NavBarIndex {
  home,
  search,
  library,
  cart,
  profile,
}
