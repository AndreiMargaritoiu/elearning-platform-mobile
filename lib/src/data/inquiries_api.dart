import 'dart:convert';

import 'package:http/http.dart';

import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class InquiriesApi {
  const InquiriesApi(HttpClientWrapper clientWrapper)
      : assert(clientWrapper != null),
        _clientWrapper = clientWrapper;

  final HttpClientWrapper _clientWrapper;

  Future<void> sendInquiry(String mentorId) async {
    final dynamic body = jsonEncode(<String, dynamic>{'mentorId': mentorId});
    await _clientWrapper.post('inquiries', body);
  }

  Future<List<Inquiry>> getUserInquiries() async {
    final Response response = await _clientWrapper.get('inquiries');
    final List<dynamic> data = jsonDecode(response.body);

    return data.map((dynamic json) => Inquiry.fromJson(json)).toList();
  }

  Future<void> readInquiries(List<String> inquiries) async {
    await _clientWrapper.patch('inquiries', json.encode(inquiries));
  }
}
