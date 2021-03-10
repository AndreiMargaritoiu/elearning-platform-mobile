import 'package:elearning_platform_mobile/src/actions/auth/index.dart';
import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _page = 0;

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
      body: <Widget>[
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
        Container(color: Colors.purple),
        Container(color: Colors.yellow),
      ][_page],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          onTap: (int i) async {
            if (i == 2) {
              final PickedFile file =
                  await ImagePicker().getVideo(source: ImageSource.gallery);
              if (file != null) {
                StoreProvider.of<AppState>(context)
                    .dispatch(UpdateVideoInfo(addVideo: file.path));
                Navigator.pushNamed(context, AppRoutes.addVideo);
              }
            } else {
              setState(() => _page = i);
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
          ]),
    );
  }
}
