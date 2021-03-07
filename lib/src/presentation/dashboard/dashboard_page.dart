import 'package:elearning_platform_mobile/src/actions/auth/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.power_settings_new),
            onPressed: () {
              StoreProvider.of<AppState>(context).dispatch(const SignOut());
            },
          )
        ],
      ),
    );
  }
}
