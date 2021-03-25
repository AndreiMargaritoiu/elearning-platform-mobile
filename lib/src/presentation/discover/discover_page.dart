import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:elearning_platform_mobile/src/presentation/playlists/playlists_feed_page.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  bool isSearchActive = true;

  @override
  void initState() {
    super.initState();

//    StoreProvider.of<AppState>(context, listen: false)
//        .dispatch(const GetAllPlaylists(),);

//    KeyboardVisibilityNotification().addNewListener(
//      onChange: (bool visible) {
//        setState(() {
//          isSearchActive = true;
//          print('se ridica');
//        });
//      },
//    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MaterialButton(
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'search',
            ),
            enabled: false,
          ),
          onPressed: () {
             Navigator.pushNamed(context, AppRoutes.searchPage);
          },
        ),
      ),
      body: const PlaylistsFeedPage(),
    );
  }
}
