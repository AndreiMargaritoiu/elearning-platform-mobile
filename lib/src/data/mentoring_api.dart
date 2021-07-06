import 'dart:convert';

import 'package:http/http.dart';

import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class MentoringApi {
  const MentoringApi(HttpClientWrapper clientWrapper)
      : assert(clientWrapper != null),
        _clientWrapper = clientWrapper;

  final HttpClientWrapper _clientWrapper;

  Future<Mentorship> addMentorship(MentorshipInfo info) async {
    final dynamic body = jsonEncode(<String, dynamic>{
      'description': info.description,
      'price': info.price,
      'category': info.category,
    });
    print('>>');
    print(body);
    final Response response = await _clientWrapper.post('mentoring', body);
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Mentorship.fromJson(data);
  }

  Future<List<Mentorship>> getMentorships(
      {List<String> category, String uid}) async {
    dynamic queryParams = <String, String>{};
    if (category != null && category.isNotEmpty) {
      String categoryParsed = '';
      category.forEach((String element) {
        categoryParsed = categoryParsed + element + ',';
      });
      queryParams = <String, String>{
        'category': categoryParsed,
      };
    }
    if (uid != null && uid.isNotEmpty) {
      queryParams = <String, String>{
        'uid': uid,
      };
    }
    final Response response =
        await _clientWrapper.get('mentoring', queryParams);
    final List<dynamic> data = jsonDecode(response.body);

    return data
        .map(
          (dynamic json) => Mentorship.fromJson(json),
        )
        .toList();
  }

  Future<Mentorship> getMentorshipById(String id) async {
    final Response response = await _clientWrapper.get('mentoring/$id');
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Mentorship.fromJson(data);
  }

  Future<void> deleteMentorship(String id) async {
    await _clientWrapper.delete('mentoring/$id');
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
  }
}
