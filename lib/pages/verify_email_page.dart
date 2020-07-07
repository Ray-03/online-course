import 'package:flutter/material.dart';

///[VerifyEmailPage] shown once and only once to ask user to validate email
class VerifyEmailPage extends StatelessWidget {
  static String id = 'verify_email_page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                  'An email has been sent to your email.\nVerify your email to access all the feature'),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('continue'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
