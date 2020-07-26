//import 'dart:math';
//import 'package:flutter/material.dart';
//import 'package:kantongilmu/components/library_dropdown_button_data.dart';
//
//class LibraryDropdownButton extends StatefulWidget {
//  @override
//  _LibraryDropdownButtonState createState() => _LibraryDropdownButtonState();
//}
//
//class _LibraryDropdownButtonState extends State<LibraryDropdownButton> {
////  String chosenDropdownValue = dropdownItems.first;
//  @override
//  Widget build(BuildContext context) {
//    return DropdownButton<String>(
//      isExpanded: true,
//      dropdownColor: Colors.green,
//      value: chosenDropdownValue,
//      icon: Transform.rotate(
//        angle: 90 / 180 * pi,
//        child: Icon(Icons.arrow_forward_ios),
//      ),
//      elevation: 16,
//      underline: SizedBox(),
//      onChanged: (String newValue) => setState(
//        () => chosenDropdownValue = newValue,
//      ),
////      isExpanded: true,
//      items: dropdownItems
//          .map<DropdownMenuItem<String>>(
//            (String item) => DropdownMenuItem(
//              child: Text(item),
//              value: item,
//            ),
//          )
//          .toList(),
//    );
//  }
//}
