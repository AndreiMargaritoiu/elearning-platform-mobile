import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class AddVideoPage extends StatelessWidget {
  const AddVideoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VideoInfoContainer(
      builder: (BuildContext context, VideoInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('New video'),
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
                  if (info.title != null && info.title.isNotEmpty) {
                    StoreProvider.of<AppState>(context).dispatch(
                      const AddVideo(),
                    );
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName(AppRoutes.home),
                    );
                  } else {
                    // show error
                  }
                },
              ),
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
                      UpdateVideoInfo(title: value),
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
                        UpdateVideoInfo(description: value),
                      );
                    },
                  ),
                ),
                if (info.thumbnailPath != null)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: GridTile(
                        child: Image.file(
                          File(info.thumbnailPath),
                        ),
                        header: GridTileBar(
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              StoreProvider.of<AppState>(context).dispatch(
                                UpdateVideoInfo(
                                    removeThumbnail: info.thumbnailPath),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () async {
                        final PickedFile file = await ImagePicker()
                            .getImage(source: ImageSource.gallery);
                        if (file != null) {
                          StoreProvider.of<AppState>(context).dispatch(
                            UpdateVideoInfo(addThumbnail: file.path),
                          );
                        }
                      },
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
