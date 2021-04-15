import 'package:elearning_platform_mobile/src/presentation/trending/trending_wrapper_page.dart';
import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:elearning_platform_mobile/src/presentation/playlists/playlists_feed_page.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {

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
        title: GestureDetector(
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 20),
              prefixIcon: Icon(
                Icons.search,
              ),
            ),
            enabled: false,
          ),
          onTap: () {
             Navigator.pushNamed(context, AppRoutes.searchPage);
          },
        ),
      ),
      body: const TrendingWrapperPage(),
    );
  }
}
