import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/pages/cart_page.dart';
import 'package:kantongilmu/pages/home_page.dart';
import 'package:kantongilmu/pages/library_page.dart';
import 'package:kantongilmu/pages/main_page.dart';
import 'package:kantongilmu/pages/profile_page.dart';
import 'package:kantongilmu/pages/explore_page.dart';

///[kBottomNavBarItems] consist its icon and title
const List<BottomNavigationBarItem> kBottomNavBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Search',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.book),
    label: 'Library',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_cart),
    label: 'cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'profile',
  ),
];

final List<AppBar> pagesAppBar = [
  AppBar(
    leading: FlutterLogo(),
    title: Text('Nama Aplikasi'),
    actions: [
      IconButton(
        icon: Icon(Icons.message),
        onPressed: () => debugPrint('message'),
        tooltip: 'Open Message',
      ),
    ],
  ),
  AppBar(
    title: Text('Explore'),
  ),
  AppBar(
    title: Text('Library'),
  ),
  AppBar(
    title: Text('CART'),
    actions: [
      IconButton(
        icon: Icon(
          FontAwesomeIcons.solidHeart,
          color: Colors.red,
        ),
        onPressed: () {},
        tooltip: 'Go to wishlist',
      ),
    ],
  ),
  AppBar(
    title: Text('Profile'),
    elevation: 5,
  ),
];

enum NavBarIndex {
  home,
  search,
  library,
  cart,
  profile,
}

///[pagesBody] to store each pages in [BottomNavigationBar][MainPage]
final pagesBody = [
  HomePage(),
  ExplorePage(),
  LibraryPage(),
  CartPage(),
  ProfilePage(),
];
