import 'package:flutter/material.dart';

const kTextFieldTitle = TextStyle(fontSize: 20);

const kTextFieldDecor = InputDecoration(
  alignLabelWithHint: true,
//  fillColor: Color(0XFF241D17),
//  focusColor: Color(0xffffffff),
//  filled: true,
  hintText: 'Enter value',
  hintStyle: TextStyle(
    color: Colors.white,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
      width: 2.0,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(32.0),
      bottomRight: Radius.circular(32.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
//      color: Colors.blue,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(32.0),
    ),
  ),
);
