import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:elearning_platform_mobile/src/actions/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:elearning_platform_mobile/src/presentation/routes.dart';

class EditVideoPage extends StatefulWidget {
  const EditVideoPage({this.currentVideo, Key key}) : super(key: key);

  final Video currentVideo;

  @override
  _EditVideoPageState createState() => _EditVideoPageState();
}

class _EditVideoPageState extends State<EditVideoPage> {
  @override
  Widget build(BuildContext context) {
    return VideoInfoContainer(
      builder: (BuildContext context, VideoInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Edit video page'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, true);
                StoreProvider.of<AppState>(context, listen: false).dispatch(
                  const GetVideosByUid(),
                );
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextFormField(
                  style: const TextStyle(fontSize: 16),
                  decoration: const InputDecoration(
                    hintText: 'Write a title...',
                    border: OutlineInputBorder(),
                    labelText: 'Title',
                  ),
                  initialValue: widget.currentVideo.title,
                  keyboardType: TextInputType.name,
                  onChanged: (String value) {
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdateVideoInfo(title: value),
                    );
                  },
                  validator: (String value) {
                    if (value.length < 3) {
                      return 'Please choose a bigger title';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: TextFormField(
                    style: const TextStyle(fontSize: 16),
                    decoration: const InputDecoration(
                      hintText: 'Write a description...',
                      border: OutlineInputBorder(),
                      labelText: 'Description',
                    ),
                    initialValue: widget.currentVideo.description,
                    keyboardType: TextInputType.name,
                    onChanged: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(
                        UpdateVideoInfo(description: value),
                      );
                    },
                    validator: (String value) {
                      if (value.length < 3) {
                        return 'Please choose a bigger description';
                      }
                      return null;
                    },
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'Update',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      color: Colors.teal,
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          UpdateVideo(widget.currentVideo.id),
                        );
                        Navigator.popUntil(
                          context,
                          ModalRoute.withName(AppRoutes.home),
                        );
                      },
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Text(
                        'Delete',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                          DeleteVideo(widget.currentVideo.id),
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
}
