import 'package:flutter/material.dart';
import 'package:kantongilmu/services/auth.dart';

///[logOutAlertDialog] is used for show user an alert before user logging out from app
Future<void> logOutAlertDialog(BuildContext context) async {
  return showDialog(
    context: context,
    barrierDismissible: false,

    /// user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Log Out'),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Text('Are you sure want to log out?'),
            ],
          ),
        ),
        actions: [
          ///user can choose no and back to page
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),

          ///or user can choose to sign out
          FlatButton(
            child: Text('Yes'),
            onPressed: () async {
              await AuthService().signOut();
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
