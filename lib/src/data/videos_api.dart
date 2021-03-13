import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:quiver/iterables.dart';

class VideosApi {
  const VideosApi(
      {@required FirebaseFirestore firestore,
      @required FirebaseStorage storage})
      : assert(firestore != null),
        assert(storage != null),
        _firestore = firestore,
        _storage = storage;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<Video> addVideo(VideoInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('videos').doc();

    final String video = await _uploadVideo(ref.id, info.path);
    final Video videoN = Video((VideoBuilder b) {
      b
        ..id = ref.id
        ..uid = uid
        ..video = video
        ..description = info.description;
    });

    await ref.set(videoN.json);
    return videoN;
  }

  Future<String> _uploadVideo(String id, String path) async {
    String video = '';
    final DocumentReference ref = _firestore.collection('NOT_USED').doc();
    final Reference storageRef = _storage.ref('posts/$id/${ref.id}');
    await storageRef.putFile(File(path));

    final String url = await storageRef.getDownloadURL();
    video = url;

    return video;
  }

  Future<List<Video>> listenForVideos(List<String> following) async {
    final List<Video> newResult = <Video>[];
    final List<List<String>> parts = partition(following, 10).toList();
    for (List<String> following in parts) {
      final QuerySnapshot snapshot = await _firestore
          .collection('videos') //
          .where('uid', whereIn: following)
          .get();

      final List<Video> result = snapshot.docs //
          .map((QueryDocumentSnapshot doc) => Video.fromJson(doc.data()))
          .toList();

      newResult.addAll(result);
    }

    return newResult;
  }
}
