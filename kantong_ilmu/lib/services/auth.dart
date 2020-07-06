import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:kantongilmu/components/notification_flushbar.dart';

abstract class BaseAuth {
  //[registerEmailPassword] is used when user want to create account using custom email
  Future registerEmailPassword(String email, String password);
  //[signInEmailPassword] is used when user want to sign in to exist account using custom email
  Future loginEmailPassword(String email, String password);
//[signOut] is used when user decide to sign out
  Future signOut();
  //
  Future forgotPassword(String email);
}

class AuthService implements BaseAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //auth change user stream
  Stream<FirebaseUser> get user {
    return _auth.onAuthStateChanged;
  }

  String getError(dynamic e) {
    switch (e.code) {
      //read documentation
      case 'ERROR_INVALID_EMAIL':
        return 'Please input valid email format';
      case 'ERROR_WRONG_PASSWORD':
      case 'ERROR_USER_NOT_FOUND':
        return 'Email or password is incorrect';
      case 'ERROR_USER_DISABLED':
        return 'User with this email has been disabled.';
      case 'ERROR_TOO_MANY_REQUESTS':
        return 'Too many requests. Try again later.';
      case 'ERROR_OPERATION_NOT_ALLOWED':
        return 'Signing in with this method is not enabled.';
      case 'ERROR_WEAK_PASSWORD':
        return 'Password must contain at least 6 characters';
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        return 'This account is exist. Try to login';
      case 'ERROR_NETWORK_REQUEST_FAILED':
        return 'Please check your internet connection';
      case 'ERROR_INVALID_CREDENTIAL':
        return 'Your account is invalid';
      default:
        return 'Something went wrong';
    }
  }

  //[signInAnonymously] is used to log in to the app anonymously
//  Future signInAnonymously() async {
//    try {
//      AuthResult result = await _auth.signInAnonymously();
//      FirebaseUser user = result.user;
//      return user;
//    } catch (e) {
//      print(e.toString());
//      return null;
//    }
//  }

  @override
  Future registerEmailPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      try {
        await user.sendEmailVerification();
        return user;
      } catch (e) {
        print('error when try send email');
        print(e);
      }
//      return user;
    } catch (e) {
      NotificationFlushBar flushBar = NotificationFlushBar(
        title: 'Oops!',
        error: true,
        message: getError(e),
      );
      return flushBar;
    }
//    throw UnimplementedError();
  }

  @override
  Future loginEmailPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      if (user.isEmailVerified) return user;
      return null;
    } catch (e) {
      NotificationFlushBar flushBar = NotificationFlushBar(
        title: 'Oops!',
        error: true,
        message: getError(e),
      );
      return flushBar;
    }
//    throw UnimplementedError();
  }

  @override
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      NotificationFlushBar flushBar = NotificationFlushBar(
        title: 'Oops!',
        error: true,
        message: getError(e),
      );
      return flushBar;
    }
//    throw UnimplementedError();
  }

  @override
  Future forgotPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
//    throw UnimplementedError();
  }
}
