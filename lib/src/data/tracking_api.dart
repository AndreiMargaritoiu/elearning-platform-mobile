import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class TrackingApi {
  const TrackingApi(
      {@required FirebaseFirestore firestore,
      @required HttpClientWrapper clientWrapper})
      : assert(firestore != null),
        assert(clientWrapper != null),
        _firestore = firestore,
        _httpClientWrapper = clientWrapper;

  final FirebaseFirestore _firestore;
  final HttpClientWrapper _httpClientWrapper;

  Future<void> trackAction(TrackingInfo info, String uid) async {
    final bool checkTrackedItem = await isItemTracked(uid, info.vid);
    if (!checkTrackedItem) {
      final DocumentReference ref = _firestore.collection('tracking').doc();

      final Tracking trackingItem = Tracking(
        (TrackingBuilder b) {
          b
            ..id = ref.id
            ..uid = uid
            ..vid = info.vid
            ..createdAt = DateTime.now().toUtc().millisecondsSinceEpoch;
        },
      );

      await ref.set(trackingItem.json);
    }
  }

  Future<bool> isItemTracked(String uid, String vid) async {
    final QuerySnapshot snapshot = await _firestore
        .collection('tracking') //
        .where('uid', isEqualTo: uid)
        .where('vid', isEqualTo: vid)
        .get();

    final List<Tracking> result = snapshot.docs //
        .map((QueryDocumentSnapshot doc) => Tracking.fromJson(
              doc.data(),
            ))
        .toList();

    return result.isNotEmpty;
  }
}
