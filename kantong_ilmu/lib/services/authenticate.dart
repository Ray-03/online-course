import 'package:flutter/material.dart';
import 'package:kantongilmu/pages/registration_page.dart';
import 'package:kantongilmu/pages/signin_page.dart';

class Authenticate extends StatefulWidget {
  static String id = 'landing_page';
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
//  bool showSignedIn = true;
//  void toggleRegisterSignin() {
//    setState(() => showSignedIn = !showSignedIn);
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: showSignedIn
//          ? RegistrationPage(
//              toggle: toggleRegisterSignin,
//            )
//          : SignInPage(
//              toggle: toggleRegisterSignin,
//            ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return SignInPage();
  }
}
