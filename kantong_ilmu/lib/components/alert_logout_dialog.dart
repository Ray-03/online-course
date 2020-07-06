import 'package:flutter/material.dart';
import 'package:kantongilmu/services/auth.dart';

Future<void> logOutAlertDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Log Out'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Are you sure want to log out?'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
              child: Text('Yes'),
              onPressed: () async {
                await AuthService().signOut();
                Navigator.pop(context);
              }),
        ],
      );
    },
  );
}
