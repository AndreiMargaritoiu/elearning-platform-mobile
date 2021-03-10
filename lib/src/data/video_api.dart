import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:meta/meta.dart';

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

  Future<Video> createVideo(VideoInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('Videos').doc();

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
    final Reference storageRef = _storage.ref('Videos/$id/${ref.id}');
    await storageRef.putFile(File(path));

    final String url = await storageRef.getDownloadURL();
    video = url;

    return video;
  }
}
