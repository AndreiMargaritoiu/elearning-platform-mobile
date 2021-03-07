import 'package:elearning_platform_mobile/src/containers/auth/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/dashboard/dashboard_page.dart';
import 'package:elearning_platform_mobile/src/presentation/login/login_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        if (user == null) {
          return const LoginPage();
        } else {
          return const DashboardPage();
        }
      },
    );
  }
}
