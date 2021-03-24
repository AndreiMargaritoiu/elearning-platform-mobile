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
  List<String> selectedVideos = <String>[];

  @override
  void initState() {
    super.initState();

    selectedVideos = widget.currentPlaylist.videoRefs.toList();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetVideosByUid(),
    );
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
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdatePlaylistInfo(title: value),
                    );
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
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdatePlaylistInfo(description: value),
                    );
                  },
                  validator: (String value) {
                    if (value.length < 3) {
                      return 'Please choose a bigger description';
                    }
                    return null;
                  },
                ),
                MaterialButton(
                  child: const Text('Select videos'),
                  onPressed: () {
                    _selectVideosModal(context);
                  },
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      child: const Text('Update'),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          UpdatePlaylist(widget.currentPlaylist.id,
                              newVideos: selectedVideos),
                        );
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(AppRoutes.home),
                        );
                      },
                    ),
                    MaterialButton(
                      child: const Text('Delete'),
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          DeletePlaylist(widget.currentPlaylist.id),
                        );
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(AppRoutes.home),
                        );
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
    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Existing videos'),
          content: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(
                right: -40.0,
                top: -40.0,
                child: InkResponse(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const CircleAvatar(
                    child: Icon(Icons.close),
                    backgroundColor: Colors.lightBlue,
                  ),
                ),
              ),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter alertState) {
                  return Container(
                    width: 350.0,
                    height: 150.0,
                    child: VideosContainer(
                      builder: (BuildContext context, List<Video> videos) {
                        return ListView.builder(
                          itemCount: videos.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Video video = videos[index];
                            return CheckboxListTile(
                              title: Text(video.title),
                              value: selectedVideos.contains(video.id),
                              onChanged: (bool value) {
                                if (selectedVideos.contains(video.id)) {
                                  selectedVideos.remove(video.id);
                                } else {
                                  selectedVideos.add(video.id);
                                }
                                setState(() {}); //ALSO UPDATE THE PARENT STATE
                                alertState(() {});
                              },
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
