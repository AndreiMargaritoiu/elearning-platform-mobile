import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class MentoringApi {
  const MentoringApi(
      {@required FirebaseFirestore firestore,
      @required HttpClientWrapper clientWrapper})
      : assert(firestore != null),
        assert(clientWrapper != null),
        _firestore = firestore,
        _clientWrapper = clientWrapper;

  final FirebaseFirestore _firestore;
  final HttpClientWrapper _clientWrapper;

  Future<Mentorship> addMentorship(MentorshipInfo info, AppUser user) async {
    final dynamic body = jsonEncode(<String, dynamic>{
      'mentorId': user.uid,
      'mentorEmail': user.email,
      'description': info.description,
      'price': info.price
    });
    final Response response = await _clientWrapper.post('mentoring', body);
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Mentorship.fromJson(data);

//    final DocumentReference ref = _firestore.collection('mentoring').doc();
//    final Mentorship mentorship = Mentorship(
//      (MentorshipBuilder b) {
//        b
//          ..id = ref.id
//          ..mentorId = user.uid
//          ..mentorEmail = user.email
//          ..description = info.description
//          ..price = info.price
//          ..createdAt = DateTime.now().toUtc().millisecondsSinceEpoch;
//      },
//    );
//    await ref.set(mentorship.json);
//    return mentorship;
  }

  Future<List<Mentorship>> getAllMentorships({List<String> category}) async {
    String queryParamParsed = '';
    if (category != null && category.isNotEmpty) {
      category.forEach((String element) {
        queryParamParsed = queryParamParsed + element + ',';
      });
    }
    final dynamic queryParams = queryParamParsed.isNotEmpty
        ? {
            'category': queryParamParsed,
          }
        : null;
    final Response response = (queryParams != null)
        ? await _clientWrapper.get('mentoring', queryParams)
        : await _clientWrapper.get('mentoring');
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Mentorship.fromJson(json),
        )
        .toList();
  }

//    final QuerySnapshot snapshot = await _firestore
//        .collection('mentoring') //
//        .get();
//    final List<Mentorship> result = snapshot.docs //
//        .map(
//          (QueryDocumentSnapshot doc) => Mentorship.fromJson(
//            doc.data(),
//          ),
//        )
//        .toList();
//    return result;

  Future<List<Mentorship>> getMentorshipsByUid(String uid) async {
    final dynamic queryParams = {
      'uid': uid,
    };
    final Response response =
        await _clientWrapper.get('mentoring', queryParams);
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Mentorship.fromJson(json),
        )
        .toList();

//    final QuerySnapshot snapshot = await _firestore
//        .collection('playlists') //
//        .where('uid', isEqualTo: uid)
//        .get();
//    final List<Playlist> result = snapshot.docs //
//        .map((QueryDocumentSnapshot doc) => Playlist.fromJson(doc.data(),),)
//        .toList();
//    return result;
  }

  Future<Mentorship> getMentorshipById(String id) async {
    final Response response = await _clientWrapper.get('mentoring/$id');
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Mentorship.fromJson(data);

//    final DocumentSnapshot doc = await _firestore.doc('mentoring/$id').get();
//    return Mentorship.fromJson(
//      doc.data(),
//    );
  }

  Future<void> deleteMentorship(String id) async {
    await _clientWrapper.delete('mentoring/$id');

//    final DocumentReference ref = _firestore.collection('mentoring').doc(id);
//    await ref.delete();
  }

  Future<Mentorship> updateMentorship(MentorshipInfo info, String id) async {
    final Map<String, dynamic> updates = <String, dynamic>{};
    if (info.description != null && info.description.isNotEmpty) {
      updates['description'] = info.description;
    }
    if (info.price != null && info.price.toString().isNotEmpty) {
      updates['price'] = info.price;
    }
    final dynamic body = jsonEncode(updates);
    final Response response = await _clientWrapper.patch('mentoring/$id', body);
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Mentorship.fromJson(data);

//    final DocumentReference ref = _firestore.collection('mentoring').doc(id);
//    if (info.description != null) {
//      await ref.update(
//        <String, dynamic>{
//          'description': info.description,
//        },
//      );
//    }
//    if (info.price != null) {
//      await ref.update(
//        <String, dynamic>{
//          'price': info.price,
//        },
//      );
//    }
//    return await getMentorshipById(id);
  }
}
