import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kantongilmu/pages/login_page.dart';
import 'package:kantongilmu/pages/main_page.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);

    ///check either user is signed in or not
    return user == null ? LoginPage() : MainPage();
  }
}
