import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class PlaylistsApi {
  const PlaylistsApi(
      {@required FirebaseFirestore firestore,
      @required HttpClientWrapper clientWrapper})
      : assert(firestore != null),
        assert(clientWrapper != null),
        _firestore = firestore,
        _clientWrapper = clientWrapper;

  final FirebaseFirestore _firestore;

  final HttpClientWrapper _clientWrapper;

  Future<Playlist> createPlaylist(PlaylistInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('playlists').doc();

    final Playlist playlist = Playlist((PlaylistBuilder b) {
      b
        ..id = ref.id
        ..uid = uid
        ..title = info.title
        ..description = info.description
        ..category = info.category
        ..videoRefs = ListBuilder<String>(info.videoRefs);
    });

    await ref.set(playlist.json);
    return playlist;
  }

  Future<List<Playlist>> getMyPlaylists(String uid) async {
    final Response response = await _clientWrapper.get('playlists?uid=$uid');

    final List<dynamic> data = jsonDecode(response.body);
    return data.map((dynamic json) => Playlist.fromJson(json)).toList();

//    final QuerySnapshot snapshot = await _firestore
//        .collection('playlists') //
//        .where('uid', isEqualTo: uid)
//        .get();
//
//    final List<Playlist> result = snapshot.docs //
//        .map((QueryDocumentSnapshot doc) => Playlist.fromJson(doc.data()))
//        .toList();
//
//    return result;
  }

  Future<List<Playlist>> getAllPlaylists() async {
    final Response response = await _clientWrapper.get('playlists');

    final List<dynamic> data = jsonDecode(response.body);
    return data.map((dynamic json) => Playlist.fromJson(json)).toList();

//    final QuerySnapshot snapshot = await _firestore
//        .collection('playlists') //
//        .get();
//
//    final List<Playlist> result = snapshot.docs //
//        .map((QueryDocumentSnapshot doc) => Playlist.fromJson(doc.data()))
//        .toList();
//
//    return result;
  }
}
