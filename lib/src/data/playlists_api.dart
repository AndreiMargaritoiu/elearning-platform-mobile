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

class PlaylistsApi {
  const PlaylistsApi(
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

  Future<Playlist> createPlaylist(PlaylistInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('playlists').doc();
    final String thumbnailUrl =
        info.thumbnailPath != null && info.thumbnailPath.isNotEmpty
            ? await _uploadFile(ref.id, info.thumbnailPath)
            : null;
    final Playlist playlist = Playlist(
      (PlaylistBuilder b) {
        b
          ..id = ref.id
          ..uid = uid
          ..title = info.title
          ..description = info.description
          ..category = info.category
          ..thumbnailUrl = thumbnailUrl
          ..videoRefs = ListBuilder<String>(info.videoRefs)
          ..searchIndex = ListBuilder<String>(<String>[info.title].searchIndex)
          ..createdAt = DateTime.now().toUtc().millisecondsSinceEpoch;
      },
    );

    await ref.set(playlist.json);

    return playlist;
  }

  Future<String> _uploadFile(String id, String path) async {
    final DocumentReference ref = _firestore.collection('NOT_USED').doc();
    final Reference storageRef = _storage.ref('playlists/$id/${ref.id}');
    await storageRef.putFile(
      File(path),
    );
    final String url = await storageRef.getDownloadURL();

    return url;
  }

  Future<List<Playlist>> getAllPlaylists({String field}) async {
    final dynamic queryParams = (field != null && field.isNotEmpty)
        ? {
            'category': field,
          }
        : null;
    final Response response = (queryParams != null)
        ? await _clientWrapper.get('playlists', queryParams)
        : await _clientWrapper.get('playlists');

    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Playlist.fromJson(json),
        )
        .toList();
  }

  Future<List<Playlist>> getPlaylistsByUid(String uid) async {
    final dynamic queryParams = {
      'uid': uid,
    };
    final Response response =
        await _clientWrapper.get('playlists', queryParams);
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Playlist.fromJson(json),
        )
        .toList();
  }

  Future<List<Playlist>> getOtherPlaylists() async {
    final Response response =
        await _clientWrapper.get('playlists?category=Other');
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Playlist.fromJson(json),
        )
        .toList();
  }

  Future<List<Playlist>> getSchoolPlaylists() async {
    final Response response =
        await _clientWrapper.get('playlists?category=School');
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Playlist.fromJson(json),
        )
        .toList();
  }

  Future<Playlist> getPlaylistById({@required String id}) async {
    final Response response = await _clientWrapper.get('playlists/$id');
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Playlist.fromJson(data);
  }

  Future<void> deletePlaylist(String id) async {
    await _clientWrapper.delete('playlists/$id');
  }

  Future<Playlist> updatePlaylist(PlaylistInfo info, String id,
      {List<String> newVideos}) async {
    final Map<String, dynamic> updates = <String, dynamic>{};
    if (info.description != null && info.description.isNotEmpty) {
      updates['description'] = info.description;
    }
    if (info.title != null && info.title.isNotEmpty) {
      updates['title'] = info.title;
      updates['searchIndex'] = <String>[info.title].searchIndex;
    }
    if (newVideos.isNotEmpty) {
      updates['videoRefs'] = newVideos;
    }
    final dynamic body = jsonEncode(updates);
    final Response response = await _clientWrapper.patch('playlists/$id', body);
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Playlist.fromJson(data);
  }

  Future<List<Playlist>> searchPlaylists(String query, String uid) async {
    final QuerySnapshot snapshot = await _firestore
        .collection('playlists')
        .where('searchIndex', arrayContains: query)
        .get();

    final List<Playlist> foundPlaylists = snapshot.docs //
        .map(
          (QueryDocumentSnapshot snapshot) => Playlist.fromJson(
            snapshot.data(),
          ),
        )
        .toList();

    return foundPlaylists
        .where((Playlist playlist) => playlist.uid != uid)
        .toList();
  }
}
