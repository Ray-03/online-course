import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kantongilmu/components/form_input.dart';
import 'package:kantongilmu/components/loading_spinkit.dart';
import 'package:kantongilmu/components/notification_flushbar.dart';
import 'package:kantongilmu/pages/main_page.dart';
import 'package:kantongilmu/pages/login_page.dart';
import 'package:kantongilmu/pages/verify_email_page.dart';
import 'package:kantongilmu/services/auth.dart';
import 'package:string_validator/string_validator.dart' as Validator;

class RegistrationPage extends StatefulWidget {
  static String id = 'registration_page';
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
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
                    Text('REGISTER'),
                    Form(
                      key: _formKey,
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
                            validator: (String val) => val.isEmpty
                                ? 'email must be filled'
                                : !Validator.isEmail(val)
                                    ? 'Hmmm... it doesn\'t looks like an email'
                                    : null,
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
                            validator: (val) => val.length < 6
                                ? 'password must be at least 6 characters'
                                : !val.contains(RegExp(r'[A-Z]'))
                                    ? 'password must contain uppercase alphabet'
                                    : !val.contains(RegExp(r'[a-z]'))
                                        ? 'password must contain lowercase alphabet'
                                        : !val.contains(RegExp(r'[0-9]'))
                                            ? 'password must contain number'
                                            : null,
                          ),
                          SizedBox(height: 20),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Text(
                              'REGISTER',
                              style: TextStyle(letterSpacing: 8, fontSize: 40),
                            ),
                            focusNode: _submitFocus,
                            onPressed: () async {
                              print('Register in action...');
                              setState(() => loading = !loading);
                              dynamic result =
                                  await _auth.registerEmailPassword(
                                _emailController.text,
                                _passwordController.text,
                              );
                              setState(() {
                                loading = !loading;
                              });
                              if (result.runtimeType == NotificationFlushBar)
                                setState(() {
                                  result.build(context);
                                });
                              else {
                                await _auth.signOut();
                                Navigator.pushReplacementNamed(
                                    context, MainPage.id);
                                Navigator.pushNamed(
                                    context, VerifyEmailPage.id);
                              }
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have account? '),
                              FlatButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, LoginPage.id);
                                },
                                child: Text(
                                  'Login',
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
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
