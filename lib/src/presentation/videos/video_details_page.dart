import 'dart:io';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/models/videos/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

class VideoDetailsPage extends StatelessWidget {
  const VideoDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoInfoContainer(builder: (BuildContext context, VideoInfo info) {
      return Scaffold(
          appBar: AppBar(title: const Text('New post'), actions: <Widget>[
            FlatButton(
              child: const Text('Share'),
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(const AddVideo());
                Navigator.popUntil(
                    context, ModalRoute.withName(AppRoutes.home));
              },
            ),
          ]),
          body: Column(
            children: <Widget>[
              TextField(
                  decoration:
                      const InputDecoration(hintText: 'Write a description...'),
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context)
                        .dispatch(UpdateVideoInfo(description: value));
                  }),
//              IconButton(
//                icon: const Icon(Icons.add),
//                onPressed: () async {
//                  final PickedFile file = await ImagePicker()
//                      .getVideo(source: ImageSource.gallery);
//                  print(file);
//                  if (file != null) {
//                    StoreProvider.of<AppState>(context)
//                        .dispatch(UpdateVideoInfo(addVideo: file.path));
//                  }
//                },
//              ),
//              GridTile(
//                child: Image.file(File(info.path)),
//                header: GridTileBar(
//                  trailing: IconButton(
//                    icon: const Icon(Icons.delete),
//                    onPressed: () {
//                      StoreProvider.of<AppState>(context)
//                          .dispatch(UpdateVideoInfo(removeVideo: info.path));
//                    },
//                  ),
//                ),
//              ),
            ],
          ),);
    });
  }
}
