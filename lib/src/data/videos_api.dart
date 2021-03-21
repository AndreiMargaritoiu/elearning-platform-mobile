import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:quiver/iterables.dart';

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

    final Video newVideo = Video((VideoBuilder b) {
      b
        ..id = ref.id
        ..uid = uid
        ..videoUrl = videoUrl
        ..thumbnailUrl = thumbnailUrl
        ..description = info.description
        ..title = info.title
        ..createdAt = DateTime.now().toUtc().millisecondsSinceEpoch;
    });

    await ref.set(newVideo.json);
    return newVideo;
  }

  Future<String> _uploadFile(String id, String path) async {
    final DocumentReference ref = _firestore.collection('NOT_USED').doc();
    final Reference storageRef = _storage.ref('videos/$id/${ref.id}');
    await storageRef.putFile(File(path));
    final String url = await storageRef.getDownloadURL();

    return url;
  }

  Future<Video> getVideoById(String id) async {
    final Response response = await _clientWrapper.get('videos/$id');

    final Map<String, dynamic> data = jsonDecode(response.body);
    return Video.fromJson(data);
  }

  Future<Video> updateVideo(VideoInfo info, String id) async {
    final DocumentReference ref = _firestore.collection('videos').doc(id);

    if (info.description != null) {
      await ref.update(<String, dynamic>{
        'description': info.description,
      });
    }

    if (info.title != null) {
      await ref.update(<String, dynamic>{
        'title': info.title,
      });
    }

    return await getVideoById(id);
  }

  Future<void> deleteVideo(String id) async {
    final DocumentReference ref = _firestore.collection('videos').doc(id);
    await ref.delete();
  }

  Future<List<Video>> getMyVideos(String uid) async {
    final dynamic queryParams = {
      'uid': uid,
    };
    final Response response = await _clientWrapper.get('videos', queryParams);

    final List<dynamic> data = jsonDecode(response.body);
    return data.map((dynamic json) => Video.fromJson(json)).toList();

//    final QuerySnapshot snapshot = await _firestore
//        .collection('videos') //
//        .where('uid', isEqualTo: uid)
//        .get();
//
//    final List<Video> result = snapshot.docs //
//        .map((QueryDocumentSnapshot doc) => Video.fromJson(doc.data()))
//        .toList();
//
//    return result;
  }

  Future<List<Video>> listenForVideos(List<String> following) async {
    final Response response = await _clientWrapper.get('videos');

    final List<dynamic> data = jsonDecode(response.body);
    return data.map((dynamic json) => Video.fromJson(json)).toList();

//    final List<Video> newResult = <Video>[];
//    final List<List<String>> parts = partition(following, 10).toList();
//    for (final List<String> following in parts) {
//      final QuerySnapshot snapshot = await _firestore
//          .collection('videos') //
//          .where('uid', whereIn: following)
//          .get();
//
//      final List<Video> result = snapshot.docs //
//          .map((QueryDocumentSnapshot doc) => Video.fromJson(doc.data()))
//          .toList();
//
//      newResult.addAll(result);
//    }
//
//    return newResult;
  }
}
