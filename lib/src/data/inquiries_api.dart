import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class InquiriesApi {
  const InquiriesApi(
      {@required FirebaseFirestore firestore,
      @required HttpClientWrapper clientWrapper})
      : assert(firestore != null),
        assert(clientWrapper != null),
        _firestore = firestore,
        _clientWrapper = clientWrapper;

  final FirebaseFirestore _firestore;
  final HttpClientWrapper _clientWrapper;

  Future<void> sendInquiry(String mentorId, String userEmail) async {
    final dynamic body = jsonEncode(
        <String, dynamic>{'mentorId': mentorId, 'inquirerEmail': userEmail});
    await _clientWrapper.post('inquiries', body);
  }

  Future<List<Inquiry>> getUserInquiries(String userId) async {
    final Response response = await _clientWrapper.get('inquiries/$userId');
    final List<dynamic> data = jsonDecode(response.body);

    return data.map((dynamic json) => Inquiry.fromJson(json)).toList();
  }

  Future<void> readInquiries(List<String> inquiries) async {
    await _clientWrapper.patch('inquiries', json.encode(inquiries));
  }
}
