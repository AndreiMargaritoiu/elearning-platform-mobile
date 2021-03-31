import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class TrendingWrapperPage extends StatefulWidget {
  const TrendingWrapperPage({Key key}) : super(key: key);

  @override
  _TrendingWrapperPageState createState() => _TrendingWrapperPageState();
}

class _TrendingWrapperPageState extends State<TrendingWrapperPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const ListenForVideos(),
    );
  }

  @override
  Widget build(BuildContext context) {
        return VideosContainer(
          builder: (BuildContext context, List<Video> videos) {
            return MaterialButton(
              child: const Text('Go to trending'),
              onPressed: () {
                Navigator.pushNamed(
                    context, AppRoutes.trendingPage,
                    arguments: videos);
              },
            );
          },
        );
  }
}
