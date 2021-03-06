import 'package:elearning_platform_mobile/src/init/init.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(const ElearningPlatform());
}

class ElearningPlatform extends StatefulWidget {
  const ElearningPlatform({Key key}) : super(key: key);

  @override
  _ElearningPlatformState createState() => _ElearningPlatformState();
}

class _ElearningPlatformState extends State<ElearningPlatform> {

  Future<Store<AppState>> _future;

  @override
  void initState() {
    super.initState();

    _future = init();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
        future: _future,
        builder: (BuildContext context,
            AsyncSnapshot<Store<AppState>> snapshot) {
          if (snapshot.hasData) {
            final Store<AppState> store = snapshot.data;

            return StoreProvider<AppState>(
              store: store,
              child: MaterialApp(
                title: 'Elearning platform',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                routes: AppRoutes.routes,
              )
            );
          } else {

            if (snapshot.hasError) {
              throw snapshot.error;
            }

            return MaterialApp(
              title: 'Elearning platform',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                )
              )
            );
          }
        }
    );
  }
}
