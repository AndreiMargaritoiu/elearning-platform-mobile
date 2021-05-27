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
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RegistrationInfoContainer(
            builder: (BuildContext context, RegistrationInfo info) {
              return Form(
                child: Column(
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
                          title: const Text(
                            'Email',
                            style: TextStyle(fontSize: 18),
                          ),
                          content: Column(
                            children: <Widget>[
                              TextFormField(
                                style: const TextStyle(fontSize: 18),
                                decoration: const InputDecoration(
                                  hintText: 'email',
                                  hintStyle: TextStyle(fontSize: 18.0),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (String value) {
                                  StoreProvider.of<AppState>(context).dispatch(
                                    UpdateRegistrationInfo(email: value),
                                  );
                                },
                                validator: (String value) {
                                  if (!value.contains('@') ||
                                      !value.contains('.')) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep == 0
                              ? StepState.editing
                              : info.email != null && info.email.isNotEmpty
                                  ? StepState.complete
                                  : StepState.disabled,
                        ),
                        Step(
                          title: const Text(
                            'Username',
                            style: TextStyle(fontSize: 18),
                          ),
                          content: Column(
                            children: <Widget>[
                              TextFormField(
                                style: const TextStyle(fontSize: 18),
                                decoration: const InputDecoration(
                                  hintText: 'username',
                                  hintStyle: TextStyle(fontSize: 18.0),
                                ),
                                keyboardType: TextInputType.name,
                                initialValue: info.email != null
                                    ? info.email.split('@').first
                                    : '',
                                onChanged: (String value) {
                                  StoreProvider.of<AppState>(context).dispatch(
                                    UpdateRegistrationInfo(username: value),
                                  );
                                },
                                validator: (String value) {
                                  if (value.length < 3 || value.contains(' ')) {
                                    return 'Please choose a bigger username, without spaces';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep == 1
                              ? StepState.editing
                              : info.username != null &&
                                      info.username.isNotEmpty
                                  ? StepState.complete
                                  : StepState.disabled,
                        ),
                        Step(
                          title: const Text(
                            'Password',
                            style: TextStyle(fontSize: 18),
                          ),
                          content: Column(
                            children: <Widget>[
                              TextFormField(
                                style: const TextStyle(fontSize: 18),
                                decoration: const InputDecoration(
                                  hintText: 'password',
                                  hintStyle: TextStyle(fontSize: 18.0),
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                onChanged: (String value) {
                                  StoreProvider.of<AppState>(context).dispatch(
                                    UpdateRegistrationInfo(password: value),
                                  );
                                },
                                validator: (String value) {
                                  if (value.length > 6) {
                                    return 'Please choose a bigger password';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          isActive: _currentStep >= 0,
                          state: _currentStep == 2
                              ? StepState.editing
                              : info.password != null &&
                                      info.password.isNotEmpty
                                  ? StepState.complete
                                  : StepState.disabled,
                        ),
                      ],
                    ),
                    const Spacer(),
                    FlatButton(
                      minWidth: MediaQuery.of(context).size.width / 2,
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        if (Form.of(context).validate()) {
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
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
