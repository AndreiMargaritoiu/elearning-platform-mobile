import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class CreatePlaylistPage extends StatefulWidget {
  const CreatePlaylistPage({Key key}) : super(key: key);

  @override
  _CreatePlaylistPageState createState() => _CreatePlaylistPageState();
}

class _CreatePlaylistPageState extends State<CreatePlaylistPage> {
  String dropdownValue = 'School';
  List<bool> isSelected = <bool>[];

  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(
      const GetVideosByUid(),
    );

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
            title: const Text('Add playlist'),
            actions: <Widget>[
              FlatButton(
                child: const Text(
                  'Share',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  if (info.title != null &&
                      info.title.isNotEmpty &&
                      info.videoRefs != null &&
                      info.videoRefs.isNotEmpty) {
                    if (info.category == null) {
                      StoreProvider.of<AppState>(context).dispatch(
                        UpdatePlaylistInfo(category: dropdownValue),
                      );
                    }
                    StoreProvider.of<AppState>(context).dispatch(
                      const CreatePlaylist(),
                    );
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName(AppRoutes.home),
                    );
                  } else {
                    // show error
                  }
                },
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextField(
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                    hintText: 'Write a title...',
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                  ),
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdatePlaylistInfo(title: value),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextField(
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: 'Write a description...',
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                    ),
                    onChanged: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(
                        UpdatePlaylistInfo(description: value),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton.icon(
                        icon: const Icon(Icons.select_all_sharp),
                        label: const Text(
                          'Select videos',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        onPressed: () {
                          _selectVideosModal(context);
                        },
                      ),
                      DropdownButton<String>(
                        value: dropdownValue,
                        items: <String>['School', 'Other']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String newValue) {
                          setState(
                            () {
                              dropdownValue = newValue;
                              StoreProvider.of<AppState>(context).dispatch(
                                UpdatePlaylistInfo(category: newValue),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                if (info.thumbnailPath != null)
                  Expanded(
                    child: GridTile(
                      child: Image.file(
                        File(info.thumbnailPath),
                      ),
                      header: GridTileBar(
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            StoreProvider.of<AppState>(context).dispatch(
                              UpdatePlaylistInfo(
                                  removeThumbnail: info.thumbnailPath),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                else
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () async {
                      final PickedFile file = await ImagePicker()
                          .getImage(source: ImageSource.gallery);
                      if (file != null) {
                        StoreProvider.of<AppState>(context).dispatch(
                          UpdatePlaylistInfo(addThumbnail: file.path),
                        );
                      }
                    },
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
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: VideosContainer(
                      builder: (BuildContext context, List<Video> videos) {
                        return ListView.builder(
                          itemCount: videos.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Video video = videos[index];
                            return CheckboxListTile(
                              title: Text(
                                video.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              value: isSelected[index],
                              onChanged: (bool value) {
                                setState(
                                  () {
                                    isSelected[index] = value;
                                  },
                                );
                                isSelected[index]
                                    ? StoreProvider.of<AppState>(context)
                                        .dispatch(
                                        UpdatePlaylistInfo(
                                            addVideoRef: video.id),
                                      )
                                    : StoreProvider.of<AppState>(context)
                                        .dispatch(
                                        UpdatePlaylistInfo(
                                            removeVideoRef: video.id),
                                      );
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

//  void _selectVideosModal(BuildContext context) {
//    showModalBottomSheet<Widget>(
//      context: context,
//      builder: (BuildContext bc) {
//        return Container(
//          height: MediaQuery.of(context).size.height,
//          child: Padding(
//            padding: const EdgeInsets.only(top: 8),
//            child: Column(
//              children: <Widget>[
//                Container(
//                  height: 2,
//                  width: MediaQuery.of(context).size.width * .4,
//                  color: Colors.grey,
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(16),
//                  child: Column(
//                    children: <Widget>[
//                      Container(
//                        child: const Text('Select videos'),
//                      ),
//                      VideosContainer(
//                        builder: (BuildContext context, List<Video> videos) {
//                          return ListView.builder(
//                            scrollDirection: Axis.vertical,
//                            shrinkWrap: true,
//                            itemCount: videos.length,
//                            itemBuilder: (BuildContext context, int index) {
//                              final Video video = videos[index];
//
//                              return Column(
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Row(
//                                    children: <Widget>[
//                                      Text(video.description),
//                                      Checkbox(
//                                        value: isSelected[index],
//                                        onChanged: (bool value) {
//                                          setState(
//                                            () {
//                                              isSelected[index] = value;
//                                            },
//                                          );
//                                          isSelected[index]
//                                              ? StoreProvider.of<AppState>(
//                                                      context)
//                                                  .dispatch(
//                                                  UpdatePlaylistInfo(
//                                                      addVideoRef: video.id),
//                                                )
//                                              : StoreProvider.of<AppState>(
//                                                      context)
//                                                  .dispatch(
//                                                  UpdatePlaylistInfo(
//                                                      removeVideoRef: video.id),
//                                                );
//                                        },
//                                      )
//                                    ],
//                                  )
//                                ],
//                              );
//                            },
//                          );
//                        },
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        );
//      },
//    );
//  }
}
