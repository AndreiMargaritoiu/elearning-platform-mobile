import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';
import 'package:meta/meta.dart';

class MentoringApi {
  const MentoringApi(
      {@required FirebaseFirestore firestore,
      @required HttpClientWrapper clientWrapper})
      : assert(firestore != null),
        assert(clientWrapper != null),
        _firestore = firestore,
        _httpClientWrapper = clientWrapper;

  final FirebaseFirestore _firestore;
  final HttpClientWrapper _httpClientWrapper;

  Future<Mentorship> addMentorship(MentorshipInfo info, AppUser user) async {
    final DocumentReference ref = _firestore.collection('mentoring').doc();

    final Mentorship mentorship = Mentorship((MentorshipBuilder b) {
      b
        ..id = ref.id
        ..mentorId = user.uid
        ..mentorEmail = user.email
        ..description = info.description
        ..price = info.price
        ..createdAt = DateTime.now().toUtc().millisecondsSinceEpoch;
    });

    await ref.set(mentorship.json);

    return mentorship;
  }

  Future<List<Mentorship>> getAllMentorships() async {
    final QuerySnapshot snapshot = await _firestore
        .collection('mentoring') //
        .get();

    final List<Mentorship> result = snapshot.docs //
        .map((QueryDocumentSnapshot doc) => Mentorship.fromJson(doc.data()))
        .toList();

    return result;
  }

  Future<Mentorship> getMentorshipById(String id) async {
    final DocumentSnapshot doc = await _firestore.doc('mentoring/$id').get();

    return Mentorship.fromJson(doc.data());
  }

  Future<void> deleteMentorship(String id) async {
    final DocumentReference ref = _firestore.collection('mentoring').doc(id);

    await ref.delete();
  }

  Future<Mentorship> updateMentorship(MentorshipInfo info, String id) async {
    final DocumentReference ref = _firestore.collection('mentoring').doc(id);

    if (info.description != null) {
      await ref.update(<String, dynamic>{
        'description': info.description,
      });
    }

    if (info.price != null) {
      await ref.update(<String, dynamic>{
        'price': info.price,
      });
    }

    return await getMentorshipById(id);
  }
}
