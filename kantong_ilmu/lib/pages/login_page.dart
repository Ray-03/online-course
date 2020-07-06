import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/components/form_input.dart';
import 'package:kantongilmu/components/loading_spinkit.dart';
import 'package:kantongilmu/components/notification_flushbar.dart';
import 'package:kantongilmu/pages/registration_page.dart';
import 'package:kantongilmu/services/auth.dart';
import 'package:string_validator/string_validator.dart' as Validator;

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();
//  final _formKey = GlobalKey<FormState>();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _submitFocus = FocusNode();
  TextEditingController _emailController = TextEditingController(text: '');
  TextEditingController _passwordController = TextEditingController(text: '');
//  String email = '';
//  String password = '';
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading
        ? LoadingSpinkit()
        : SafeArea(
            child: Scaffold(
              body: Container(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('LOGIN'),
                    Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20),
                          FormInput(
                            controller: _emailController,
                            focusNode: _emailFocus,
                            onFieldSubmitted: (_) {
                              setState(() {
                                _emailFocus.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(_passwordFocus);
                              });
                            },
                            hint: 'Email',
//                            onSaved: (String val) =>
//                                setState(() => email = val),
//                        validator: (String val) => val.isEmpty
//                            ? 'Email must be filled'
//                            : !Validator.isEmail(val)
//                                ? 'Hmmm... it doesn\'t looks like an email'
//                                : null,
                            inputType: TextInputType.emailAddress,
                            icon: Icons.alternate_email,
                          ),
                          SizedBox(height: 20),
                          FormInput(
                            icon: FontAwesomeIcons.unlockAlt,
                            controller: _passwordController,
                            focusNode: _passwordFocus,
                            onFieldSubmitted: (_) {
                              _passwordFocus.unfocus();
                              FocusScope.of(context).requestFocus();
                            },
                            hint: 'Password',
//                            onSaved: (String val) =>
//                                setState(() => password = val),
                            inputType: TextInputType.visiblePassword,
                            isObscured: true,
//                            validator: (String val) => val.length < 6
//                                ? 'Password must be filled at least 6 characters'
//                                : null,
                          ),
                          SizedBox(height: 20),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              //nanti coba diganti ke StadiumBorder
                              borderRadius: BorderRadius.circular(35),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'LOGIN',
                              style: TextStyle(letterSpacing: 8, fontSize: 40),
                            ),
                            focusNode: _submitFocus,
                            onPressed: () async {
                              print('Login in action...');
                              setState(() => loading = !loading);
                              dynamic result = await _auth.loginEmailPassword(
                                  _emailController.text,
                                  _passwordController.text);
                              setState(() {
                                loading = !loading;
                              });
                              if (result.runtimeType == NotificationFlushBar)
                                setState(() {
                                  result.build(context);
                                });
                            },
                          ),
                          FlatButton(
                            onPressed: () {
                              print('forgot password');
                            },
                            child: Text(
                              'Forgot your password?',
                              style: TextStyle(
                                color: Color(0XFFA0A0A0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            endIndent: 30,
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        Text('OR'),
                        Expanded(
                          child: Divider(
                            indent: 30,
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have account? '),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, RegistrationPage.id);
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0XFFFFD185),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
//        child: RaisedButton(
//          onPressed: () async {
//            dynamic result = await _auth.signinAnon();
//            if (result == null) {
//              print('error sign in');
//            } else {
//              print('succeed');
//              print(result.isAnonymous);
//              print(result.uid);
//              print(result.isEmailVerified);
//            }
//          },
//          child: Text('anon'),
//        ),
              ),
            ),
          );
  }
}
