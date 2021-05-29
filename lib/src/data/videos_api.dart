import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:quiver/iterables.dart';

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

    // final dynamic body = jsonEncode(<String, dynamic>{
    //   'id': ref.id,
    //   'uid': uid,
    //   'title': info.title,
    //   'searchIndex': <String>[info.title].searchIndex,
    //   'description': info.description,
    //   'thumbnailUrl': thumbnailUrl,
    //   'videoUrl': videoUrl,
    // });
    // final Response response = await _clientWrapper.post('videos', body);
    // final Map<String, dynamic> data = jsonDecode(response.body);
    //
    // return Video.fromJson(data);

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

  Future<String> _uploadFile(String uid, String path) async {
    // final DocumentReference ref = _firestore.collection('NOT_USED').doc();
    // final Reference storageRef = _storage.ref('videos/$id/${ref.id}');
    final Reference storageRef = _storage.ref('videos/$uid');
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

    final DocumentReference ref = _firestore.collection('videos').doc(id);
    if (info.description != null) {
      await ref.update(
        <String, dynamic>{
          'description': info.description,
        },
      );
    }
    if (info.title != null) {
      await ref.update(
        <String, dynamic>{
          'title': info.title,
        },
      );
    }
    return await getVideoById(id);
  }

  Future<void> deleteVideo(String id) async {
    await _clientWrapper.delete('videos/$id'); 

//    final DocumentReference ref = _firestore.collection('videos').doc(id);
//    await ref.delete();
  }

  Future<List<Video>> getVideosByUid(String uid) async {
    final dynamic queryParams = {
      'uid': uid,
    };
    final Response response = await _clientWrapper.get('videos', queryParams);
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Video.fromJson(json),
        )
        .toList();

//    final QuerySnapshot snapshot = await _firestore
//        .collection('videos') //
//        .where('uid', isEqualTo: uid)
//        .get();
//    final List<Video> result = snapshot.docs //
//        .map((QueryDocumentSnapshot doc) => Video.fromJson(doc.data(),),)
//        .toList();
//    return result;
  }

  Future<List<Video>> getVideosByPlaylistId(String playlistId) async {
    final dynamic queryParams = {
      'playlistId': playlistId,
    };
    final Response response = await _clientWrapper.get('videos', queryParams);
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Video.fromJson(json),
        )
        .toList();
  }

  Future<List<Video>> listenForVideos(List<String> following) async {
    final Response response = await _clientWrapper.get('videos');
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Video.fromJson(json),
        )
        .toList();

//    final List<Video> newResult = <Video>[];
//    final List<List<String>> parts = partition(following, 10).toList();
//    for (final List<String> following in parts) {
//      final QuerySnapshot snapshot = await _firestore
//          .collection('videos') //
//          .where('uid', whereIn: following)
//          .get();
//      final List<Video> result = snapshot.docs //
//          .map((QueryDocumentSnapshot doc) => Video.fromJson(doc.data(),),)
//          .toList();
//      newResult.addAll(result);
//    }
//    return newResult;
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
