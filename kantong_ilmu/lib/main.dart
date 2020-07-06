import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kantongilmu/pages/forgot_password_page.dart';
import 'package:kantongilmu/pages/main_page.dart';
import 'package:kantongilmu/pages/my_account_page.dart';
import 'package:kantongilmu/pages/registration_page.dart';
import 'package:kantongilmu/pages/login_page.dart';
import 'package:kantongilmu/pages/verify_email_page.dart';
import 'package:kantongilmu/services/auth.dart';
import 'file:///C:/allData/kantongIlmu/kantong_ilmu/lib/pages/wrapper.dart';
import 'package:provider/provider.dart';

void main() => runApp(KantongIlmu());

class KantongIlmu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Kantong Ilmu',
        themeMode: ThemeMode.dark,
        theme: ThemeData.light().copyWith(),
        darkTheme: ThemeData.dark().copyWith(
//          brightness: Brightness.dark,
          scaffoldBackgroundColor: Color(0XFF241D17),
          focusColor: Color(0XFFDA9E5F),
          accentColor: Color(0XFFDA9E5F),
          cursorColor: Color(0XFFDA9E5F),
          buttonTheme: ButtonThemeData().copyWith(
            buttonColor: Color(0XFFDA9E5F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          bottomNavigationBarTheme:
              BottomNavigationBarTheme.of(context).copyWith(
            backgroundColor: Color.fromARGB(100, 36, 29, 23),
            selectedItemColor: Color(0XFFDA9E5F),
            unselectedItemColor: Color(0XFF7D5B3C),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
        routes: {
          MainPage.id: (context) => MainPage(),
          LoginPage.id: (context) => LoginPage(),
          RegistrationPage.id: (context) => RegistrationPage(),
          VerifyEmailPage.id: (context) => VerifyEmailPage(),
          ForgotPasswordPage.id: (context) => ForgotPasswordPage(),
          MyAccount.id: (context) => MyAccount(),
        },
      ),
    );
  }
}
