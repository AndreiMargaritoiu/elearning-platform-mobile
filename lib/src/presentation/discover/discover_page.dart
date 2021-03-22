import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/presentation/playlists/playlists_feed_page.dart';
import 'package:elearning_platform_mobile/src/presentation/widgets/search_users_page.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  bool isSearchActive = false;

  @override
  void initState() {
    super.initState();

//    StoreProvider.of<AppState>(context, listen: false)
//        .dispatch(const GetAllPlaylists());

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
      body: isSearchActive
          ? const SearchUsersPage(showFollow: true)
          : Column(
              children: <Widget>[
                Container(
                  height: 80,
                  child: const SearchUsersPage(showFollow: true),
                ),
                const Expanded(
                  child: PlaylistsFeedPage(),
                )
              ],
            ),
    );
  }
}
