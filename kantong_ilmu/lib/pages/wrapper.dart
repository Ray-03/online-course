import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kantongilmu/pages/main_page.dart';
import 'file:///C:/allData/kantongIlmu/kantong_ilmu/lib/services/authenticate.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser>(context);
    //check either user is signed in or not
    return user == null ? Authenticate() : MainPage();
  }
}
