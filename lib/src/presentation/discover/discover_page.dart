import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/trending/workshops_bottom_list.dart';
import 'package:flutter/material.dart';

import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key key}) : super(key: key);

  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const ListenForVideos(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideosContainer(
        builder: (BuildContext context, List<Video> videos) {
          return Stack(
            children: <Widget>[
              SafeArea(
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
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
                      MaterialButton(
                        child: const Text('Go to trending'),
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.trendingPage,
                              arguments: videos);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              WorkshopsBottomList(),
            ],
          );
        },
      ),
    );
  }
}
