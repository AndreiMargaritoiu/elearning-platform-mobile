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
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Trending videos',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Container(height: 16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Material(
                                      //Wrap with Material
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22.0)),
                                      elevation: 18.0,
                                      color: const Color(0xFF162A49),
                                      clipBehavior: Clip.antiAlias,
                                      // Add This
                                      child: MaterialButton(
                                        child: const Text(
                                          'Watch trending',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, AppRoutes.trendingPage,
                                              arguments: videos);
                                        },
                                      ),
                                    ),
                                    Container(height: 16),
                                    const Icon(
                                      Icons.trending_up_outlined,
                                      size: 50,
                                    ),
                                  ],
                                ),
                                Container(width: 16),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  color: Colors.grey.shade400,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: ListView.builder(
                                      itemCount: videos.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final Video video = videos[index];

                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              '${index + 1}. ${video.title}',
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: Color(0xFF162A49),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Container(height: 2),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(height: 32),
                            const Text(
                              'Take quizzes',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
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
