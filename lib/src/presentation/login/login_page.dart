import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/mixin/dialog_mixin.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _response(AppAction action) {
    if (action is LoginError) {
      showErrorDialog(context, 'Login error', action.error);
    } else if (action is SignUpWithGoogleError) {
      showErrorDialog(context, 'Google error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      'Hello',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Sign in to your account',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: _email,
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        hintText: 'email',
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        errorStyle: TextStyle(
                          fontSize: 15.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value) {},
                      validator: (String value) {
                        if (!value.contains('@') || !value.contains('.')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    const Divider(),
                    TextFormField(
                      controller: _password,
                      style: const TextStyle(fontSize: 18, color: Colors.black),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        filled: true,
                        hintStyle:
                            TextStyle(fontSize: 18.0, color: Colors.black),
                        hintText: 'password',
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        errorStyle: TextStyle(
                          fontSize: 15.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                      obscureText: true,
                      onChanged: (String value) {},
                    ),
                    ButtonBar(
                      children: <Widget>[
                        // FlatButton(
                        //   child: const Text('Sign in with Google'),
                        //   onPressed: () {
                        //     StoreProvider.of<AppState>(context).dispatch(
                        //       SignUpWithGoogle(_response),
                        //     );
                        //   },
                        // ),
                        FlatButton(
                          child: Text(
                            'Reset password',
                            style: TextStyle(
                                fontSize: 16,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRoutes.resetPassword);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    FlatButton(
                      minWidth: MediaQuery.of(context).size.width / 2,
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        if (Form.of(context).validate()) {
                          StoreProvider.of<AppState>(context).dispatch(
                            Login(
                              email: _email.text,
                              password: _password.text,
                              response: _response,
                            ),
                          );
                        }
                      },
                    ),
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        text: 'You don\'t have an account? ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign Up!',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, AppRoutes.signUp);
                              },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
