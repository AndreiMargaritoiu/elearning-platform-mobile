import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class EditPlaylistPage extends StatefulWidget {
  const EditPlaylistPage({this.currentPlaylist, Key key}) : super(key: key);

  final Playlist currentPlaylist;

  @override
  _EditPlaylistPageState createState() => _EditPlaylistPageState();
}

class _EditPlaylistPageState extends State<EditPlaylistPage> {
  List<bool> isSelected = <bool>[];
  List<String> newVideoRefs = <String>[];

  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false)
        .dispatch(const GetVideosByUid());

    for (int i = 0; i < 100; i++) {
      isSelected.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PlaylistInfoContainer(
      builder: (BuildContext context, PlaylistInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Edit playlist page'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'title',
                  ),
                  initialValue: widget.currentPlaylist.title,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdatePlaylistInfo(title: value));
                  },
                  validator: (String value) {
                    if (value.length < 3) {
                      return 'Please choose a bigger title';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'description',
                  ),
                  initialValue: widget.currentPlaylist.description,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdatePlaylistInfo(description: value));
                  },
                  validator: (String value) {
                    if (value.length < 3) {
                      return 'Please choose a bigger description';
                    }
                    return null;
                  },
                ),
//                MaterialButton(
//                  child: const Text('Select videos'),
//                  onPressed: () {
//                    _selectVideosModal(context);
//                  },
//                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      child: const Text('Update'),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                            UpdatePlaylist(widget.currentPlaylist.id));
                        Navigator.popUntil(
                            context, ModalRoute.withName(AppRoutes.home));
                      },
                    ),
                    MaterialButton(
                      child: const Text('Delete'),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                            UpdatePlaylist(widget.currentPlaylist.id));
                        Navigator.popUntil(
                            context, ModalRoute.withName(AppRoutes.home));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _selectVideosModal(BuildContext context) {
    showModalBottomSheet<Widget>(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: <Widget>[
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * .4,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: const Text('Add content'),
                      ),
                      VideosContainer(
                        builder: (BuildContext context, List<Video> videos) {
                          return ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: videos.length,
                            itemBuilder: (BuildContext context, int index) {
                              final Video video = videos[index];

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(video.description),
                                      Checkbox(
                                        value: isSelected[index],
                                        onChanged: (bool value) {
                                          setState(
                                            () {
                                              isSelected[index] = value;
                                            },
                                          );
                                          isSelected[index]
                                              ? StoreProvider.of<AppState>(
                                              context)
                                              .dispatch(UpdatePlaylistInfo(
                                              addVideoRef: video.id))
                                              : StoreProvider.of<AppState>(
                                              context)
                                              .dispatch(UpdatePlaylistInfo(
                                              removeVideoRef:
                                              video.id));
                                        },
                                      )
                                    ],
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
