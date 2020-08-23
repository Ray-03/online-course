import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kantongilmu/pages/about_this_course_page.dart';
import 'package:kantongilmu/pages/chosen_course_page.dart';
import 'package:kantongilmu/pages/explore_suggested.dart';
import 'package:kantongilmu/pages/explore_this_tutor.dart';
import 'package:kantongilmu/pages/forgot_password_page.dart';
import 'package:kantongilmu/pages/library_chosen_course_page.dart';
import 'package:kantongilmu/pages/main_page.dart';
import 'package:kantongilmu/pages/my_account_page.dart';
import 'package:kantongilmu/pages/registration_page.dart';
import 'package:kantongilmu/pages/login_page.dart';
import 'package:kantongilmu/pages/verify_email_page.dart';
import 'package:kantongilmu/pages/landing_page.dart';
import 'package:kantongilmu/services/auth.dart';
import 'package:provider/provider.dart';

///[KantongIlmu] is our root of app
void main() => runApp(KantongIlmu());

class KantongIlmu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///use stream provider to check whether user is signed in or not in FirebaseUser.value
    return StreamProvider<FirebaseUser>.value(
      value: AuthService().userState, //changed when user state changed
      child: MaterialApp(
        title: 'Kantong Ilmu',
        themeMode:
            ThemeMode.dark, //TODO: Change themeMode based on user preferences
        theme: ThemeData.light()
            .copyWith(), //TODO: Change light theme based on our color scheme
        darkTheme: ThemeData.dark().copyWith(
          //TODO: Change light theme based on our color scheme
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

          ///[bottomNavigationBarTheme] is used for change bottom nav bar style
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
        home: LandingPage(),
        routes: {
          MainPage.id: (context) => MainPage(),
          LoginPage.id: (context) => LoginPage(),
          RegistrationPage.id: (context) => RegistrationPage(),
          VerifyEmailPage.id: (context) => VerifyEmailPage(),
          ForgotPasswordPage.id: (context) => ForgotPasswordPage(),
          MyAccount.id: (context) => MyAccount(),
          ExploreChosenCourse.id: (context) => ExploreChosenCourse(),
          AboutThisCoursePage.id: (context) => AboutThisCoursePage(),
          ExploreSuggested.id: (context) => ExploreSuggested(),
          ExploreFromThisTutor.id: (context) => ExploreFromThisTutor(),
          LibraryChosenCoursePage.id: (context) => LibraryChosenCoursePage(),
        },
      ),
    );
  }
}
