import 'dart:async';

import 'package:elearning_platform_mobile/src/actions/tracking/index.dart';
import 'package:elearning_platform_mobile/src/containers/index.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({this.currentVideo, Key key}) : super(key: key);

  final Video currentVideo;

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.currentVideo.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return TrackingInfoContainer(
          builder: (BuildContext context, TrackingInfo info) {
            return Scaffold(
              appBar: AppBar(
                title: Text(widget.currentVideo.title),
              ),
              // Use a FutureBuilder to display a loading spinner while waiting for the
              // VideoPlayerController to finish initializing.
              body: FutureBuilder<void>(
                future: _initializeVideoPlayerFuture,
                builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (widget.currentVideo.uid != currentUser.uid) {
                    StoreProvider.of<AppState>(context).dispatch(
                      UpdateTrackingInfo(vid: widget.currentVideo.id),
                    );
                    StoreProvider.of<AppState>(context).dispatch(
                      const TrackAction(),
                    );
                  }
                  setState(
                    () {
                      if (_controller.value.isPlaying) {
                        _controller.pause();
                      } else {
                        _controller.play();
                      }
                    },
                  );
                },
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
