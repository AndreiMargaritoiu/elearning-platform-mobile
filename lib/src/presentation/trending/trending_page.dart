import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:elearning_platform_mobile/src/models/index.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({this.trendingVideos, Key key}) : super(key: key);

  final List<Video> trendingVideos;

  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  int index = 0;
  double _position = 0;

//  double _buffer = 0;
  bool _lock = true;
  final Map<String, VideoPlayerController> _controllers =
      <String, VideoPlayerController>{};
  final Map<int, VoidCallback> _listeners = <int, VoidCallback>{};
  final Set<String> _urls = <String>{};

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void initState() {
    super.initState();

    for (final Video video in widget.trendingVideos) {
      _urls.add(video.videoUrl);
    }

    if (_urls.isNotEmpty) {
      _initController(0).then((_) {
        _playController(0);
      });
    }

    if (_urls.length > 1) {
      _initController(1).whenComplete(() => _lock = false);
    }
  }

  @override
  void dispose() {
    for (int i = 0; i < widget.trendingVideos.length; i++) {
      if (_controller(i) != null) {
        _controller(i).dispose();
      }
    }

    super.dispose();
  }

  VoidCallback _listenerSpawner(int index) {
    return () {
      final int dur = _controller(index).value.duration.inMilliseconds;
      final int pos = _controller(index).value.position.inMilliseconds;
//      int buf = _controller(index).value.buffered.last.end.inMilliseconds;

      setState(() {
        if (dur <= pos) {
          _position = 0;
          return;
        }
        _position = pos / dur;
//        _buffer = buf / dur;
      });
      if (dur - pos < 1) {
        if (index < _urls.length - 1) {
          _nextVideo();
        }
      }
    };
  }

  VideoPlayerController _controller(int index) {
    return _controllers[_urls.elementAt(index)];
  }

  Future<void> _initController(int index) async {
    final VideoPlayerController controller =
        VideoPlayerController.network(_urls.elementAt(index));
    _controllers[_urls.elementAt(index)] = controller;
    await controller.initialize();
  }

  void _removeController(int index) {
    _controller(index).dispose();
    _controllers.remove(_urls.elementAt(index));
    _listeners.remove(index);
  }

  void _stopController(int index) {
    _controller(index).removeListener(_listeners[index]);
    _controller(index).pause();
    _controller(index).seekTo(const Duration(milliseconds: 0));
  }

  void _playController(int index) async {
    if (!_listeners.keys.contains(index)) {
      _listeners[index] = _listenerSpawner(index);
    }
    _controller(index).addListener(_listeners[index]);
    await _controller(index).play();
    setState(() {});
  }

  void _previousVideo() {
    if (_lock || index == 0) {
      return;
    }
    _lock = true;

    _stopController(index);

    if (index + 1 < _urls.length) {
      _removeController(index + 1);
    }

    _playController(--index);

    if (index == 0) {
      _lock = false;
    } else {
      _initController(index - 1).whenComplete(() => _lock = false);
    }
  }

  void _nextVideo() async {
    if (_lock || index == _urls.length - 1) {
      return;
    }
    _lock = true;

    _stopController(index);

    if (index - 1 >= 0) {
      _removeController(index - 1);
    }

    _playController(++index);

    if (index == _urls.length - 1) {
      _lock = false;
    } else {
      _initController(index + 1).whenComplete(() => _lock = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playing ${index + 1} of ${_urls.length}'),
      ),
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onLongPressStart: (_) => _controller(index).pause(),
            onLongPressEnd: (_) => _controller(index).play(),
            child: Center(
              child: AspectRatio(
                aspectRatio: _controller(index).value.aspectRatio,
                child: Center(child: VideoPlayer(_controller(index))),
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: 10,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
            ),
          ),
          Positioned(
            child: Container(
              height: 10,
              width: MediaQuery.of(context).size.width * _position,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _previousVideo,
            child: const Icon(Icons.arrow_back),
            heroTag: 'btn1',
          ),
          const SizedBox(width: 24),
          FloatingActionButton(
              onPressed: _nextVideo,
              child: const Icon(Icons.arrow_forward),
              heroTag: 'btn2'),
        ],
      ),
    );
  }
}
