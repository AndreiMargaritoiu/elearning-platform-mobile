import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/mixin/dialog_mixin.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> with DialogMixin {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;

  void _response(BuildContext context, AppAction action) {
    if (action is SignupSuccessful) {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (_) => false);
    } else if (action is SignupError) {
      showErrorDialog(context, 'Signup error', action.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RegistrationInfoContainer(
            builder: (BuildContext context, RegistrationInfo info) {
              return Column(
                children: <Widget>[
                  Stepper(
                    type: stepperType,
                    physics: const ScrollPhysics(),
                    currentStep: _currentStep,
                    onStepTapped: (int step) =>
                        setState(() => _currentStep = step),
                    controlsBuilder: (BuildContext context,
                        {VoidCallback onStepContinue,
                        VoidCallback onStepCancel}) {
                      return Row(
                        children: <Widget>[
                          if (_currentStep != 2)
                            TextButton(
                              onPressed: () {
                                setState(() => _currentStep += 1);
                              },
                              child: const Text('NEXT'),
                            )
                          else
                            Container(),
                          if (_currentStep != 0)
                            TextButton(
                              onPressed: () {
                                setState(() => _currentStep -= 1);
                              },
                              child: const Text('BACK'),
                            )
                          else
                            Container(),
                        ],
                      );
                    },
                    steps: <Step>[
                      Step(
                        title: const Text('Email'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context).dispatch(
                                    UpdateRegistrationInfo(email: value));
                              },
                              validator: (String value) {
                                if (value.length < 3) {
                                  return 'Please choose a bigger description';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 0
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: const Text('Username'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'username',
                              ),
                              keyboardType: TextInputType.name,
                              initialValue: info.email != null
                                  ? info.email.split('@').first
                                  : '',
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context).dispatch(
                                    UpdateRegistrationInfo(username: value));
                              },
                              validator: (String value) {
                                if (value.length < 3) {
                                  return 'Please choose a bigger description';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: const Text('Password'),
                        content: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'password',
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              onChanged: (String value) {
                                StoreProvider.of<AppState>(context).dispatch(
                                    UpdateRegistrationInfo(password: value));
                              },
                              validator: (String value) {
                                if (value.length < 3) {
                                  return 'Please choose a bigger description';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Expanded(
                    child: FlatButton(
                      child: const Text('Register'),
                      onPressed: () {
                        if (info.password != null &&
                            info.password.isNotEmpty &&
                            info.username != null &&
                            info.username.isNotEmpty &&
                            info.email != null &&
                            info.email.isNotEmpty) {
                          StoreProvider.of<AppState>(context).dispatch(
                            Signup(
                              (AppAction action) {
                                _response(context, action);
                              },
                            ),
                          );
                        } else {
                          // show an error
                        }
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
