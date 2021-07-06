import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'package:elearning_platform_mobile/src/data/index.dart';
import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class VideosApi {
  const VideosApi(
      {@required FirebaseFirestore firestore,
      @required FirebaseStorage storage,
      @required HttpClientWrapper clientWrapper})
      : assert(firestore != null),
        assert(storage != null),
        assert(clientWrapper != null),
        _firestore = firestore,
        _storage = storage,
        _clientWrapper = clientWrapper;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  final HttpClientWrapper _clientWrapper;

  Future<Video> addVideo(VideoInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('videos').doc();
    final String videoUrl = await _uploadFile(ref.id, info.videoPath);
    final String thumbnailUrl =
        info.thumbnailPath != null && info.thumbnailPath.isNotEmpty
            ? await _uploadFile(ref.id, info.thumbnailPath)
            : null;

    final Video newVideo = Video(
      (VideoBuilder b) {
        b
          ..id = ref.id
          ..uid = uid
          ..videoUrl = videoUrl
          ..thumbnailUrl = thumbnailUrl
          ..description = info.description
          ..title = info.title
          ..searchIndex = ListBuilder<String>(<String>[info.title].searchIndex)
          ..createdAt = DateTime.now().toUtc().millisecondsSinceEpoch;
      },
    );

    await ref.set(newVideo.json);
    return newVideo;
  }

  Future<String> _uploadFile(String id, String path) async {
    final DocumentReference ref = _firestore.collection('NOT_USED').doc();
    final Reference storageRef = _storage.ref('videos/$id/${ref.id}');
    await storageRef.putFile(
      File(path),
    );
    final String url = await storageRef.getDownloadURL();

    return url;
  }

  Future<Video> getVideoById(String id) async {
    final Response response = await _clientWrapper.get('videos/$id');
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Video.fromJson(data);
  }

  Future<Video> updateVideo(VideoInfo info, String id) async {
    final Map<String, dynamic> updates = <String, dynamic>{};
    if (info.description != null && info.description.isNotEmpty) {
      updates['description'] = info.description;
    }
    if (info.title != null && info.title.isNotEmpty) {
      updates['title'] = info.title;
      updates['searchIndex'] = <String>[info.title].searchIndex;
    }
    final dynamic body = jsonEncode(updates);
    final Response response = await _clientWrapper.patch('videos/$id', body);
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Video.fromJson(data);
  }

  Future<void> deleteVideo(String id) async {
    await _clientWrapper.delete('videos/$id');
  }

  Future<List<Video>> getVideos({
    String userId,
    String playlistId,
    bool trending,
    bool followers,
  }) async {
    dynamic queryParams = <String, String>{};
    if (userId != null && userId.isNotEmpty) {
      queryParams = <String, String>{
        ...queryParams,
        'uid': userId,
      };
    }
    if (playlistId != null && playlistId.isNotEmpty) {
      queryParams = <String, String>{
        ...queryParams,
        'playlistId': playlistId,
      };
    }
    if (trending != null && trending) {
      queryParams = <String, String>{
        ...queryParams,
        'trending': 'true',
      };
    }
    if (followers != null && followers) {
      queryParams = <String, String>{
        'followers': 'true',
      };
    }
    final Response response = await _clientWrapper.get('videos', queryParams);
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Video.fromJson(json),
        )
        .toList();
  }

  Future<List<Video>> searchVideos(String query, String uid) async {
    final QuerySnapshot snapshot = await _firestore
        .collection('videos')
        .where('searchIndex', arrayContains: query)
        .get();

    final List<Video> foundVideos = snapshot.docs //
        .map(
          (QueryDocumentSnapshot snapshot) => Video.fromJson(
            snapshot.data(),
          ),
        )
        .toList();

    return foundVideos.where((Video video) => video.uid != uid).toList();
  }
}
