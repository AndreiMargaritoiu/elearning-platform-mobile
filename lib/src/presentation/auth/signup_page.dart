// File created by
// Lung Razvan <long1eu>
// on 04/01/2021

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/mixin/dialog_mixin.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class SignUpPage extends StatelessWidget with DialogMixin {
  const SignUpPage({Key key}) : super(key: key);

  void _response(BuildContext context, AppAction action) {
    if (action is SignUpSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is SignUpError) {
      showErrorDialog(context, 'Signup error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Builder(
              builder: (BuildContext context) {
                return Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdateRegistrationInfo(email: value));
                      },
                      validator: (String value) {
                        if (!value.contains('@') || !value.contains('.')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'username',
                      ),
                      keyboardType: TextInputType.name,
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context).dispatch(
                            UpdateRegistrationInfo(username: value));
                      },
                      validator: (String value) {
                        if (value.length < 3) {
                          return 'Please choose a bigger username';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'password',
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      onChanged: (String value) {
                        StoreProvider.of<AppState>(context).dispatch(UpdateRegistrationInfo(password: value));
                      },
                      validator: (String value) {
                        if (value.length < 6) {
                          return 'Please choose a better password';
                        }
                        return null;
                      },
                    ),
                    const Spacer(),
                    FlatButton(
                      child: const Text('SignUp!'),
                      onPressed: () {
                        if (Form.of(context).validate()) {
                          StoreProvider.of<AppState>(context).dispatch(SignUp((AppAction action) {
                            _response(context, action);
                          }));
                        }
                      },
                    ),
                    const Divider(),
                    Text.rich(
                      TextSpan(
                        text: 'Already have an account? ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Login!',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popUntil(context,
                                    ModalRoute.withName(AppRoutes.home));
                              },
                          ),
                        ],
                      ),
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
