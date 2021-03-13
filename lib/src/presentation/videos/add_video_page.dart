import 'dart:io';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/models/videos/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

class AddVideoPage extends StatelessWidget {
  const AddVideoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoInfoContainer(
      builder: (BuildContext context, VideoInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add video'),
            actions: <Widget>[
              FlatButton(
                child: const Text('Next'),
                onPressed: () {
                  if (info.path.isNotEmpty) {
                    Navigator.pushNamed(context, AppRoutes.videoDetails);
                  } else {
                    // show error
                  }
                },
              )
            ],
          ),
          body:
//          body: GridView.builder(
//            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//              crossAxisCount: 1,
//            ),
//            itemCount: 1,
//            itemBuilder: (BuildContext context, int index) {
//              if (index == 0) {
//                return Center(
//                  child: IconButton(
//                    icon: const Icon(Icons.add),
//                    onPressed: () async {
//                      final PickedFile file = await ImagePicker()
//                          .getImage(source: ImageSource.gallery);
//                      print(file);
//                      if (file != null) {
//                        StoreProvider.of<AppState>(context)
//                            .dispatch(UpdateVideoInfo(addVideo: file.path));
//                      }
//                    },
//                  ),
//                );
//              }
              GridTile(
            child: Image.file(File(info.path)),
            header: GridTileBar(
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  StoreProvider.of<AppState>(context)
                      .dispatch(UpdateVideoInfo(removeVideo: info.path));
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
