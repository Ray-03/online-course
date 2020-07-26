import 'package:flutter/material.dart';

const List<String> libraryDropdownItems = <String>[
  'Course',
  'Article',
  'Video',
];

final List<Widget> libraryDropdownNavigation = <Widget>[
  Container(
    child: Text('ini halaman course'),
    color: Colors.red,
  ),
  Container(
    child: Text('ini halaman artikel'),
    color: Colors.blue,
  ),
  Container(
    child: Text('ini halaman video'),
    color: Colors.purple,
  ),
];
