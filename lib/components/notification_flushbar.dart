import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

class NotificationFlushBar extends StatelessWidget {
  NotificationFlushBar({this.title, this.message, this.isError});

  ///[title] header of the message
  ///[message] body of the message
  ///[isError] check either error message or not
  final String title;
  final String message;
  final bool isError;
  @override
  Widget build(BuildContext context) {
    return Flushbar(
      duration: Duration(seconds: 2),
      padding: EdgeInsets.all(10),
      borderRadius: 10,
      backgroundGradient: LinearGradient(
        colors: isError
            ? [Colors.red.shade500, Colors.redAccent.shade100]
            : [Colors.green.shade500, Colors.greenAccent],
        stops: [0.7, 1],
      ),
      boxShadows: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(3, 3),
          blurRadius: 3,
        ),
      ],
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      title: title,
      message: message,
    )..show(context);
  }
}
