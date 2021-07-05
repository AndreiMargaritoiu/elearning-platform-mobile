import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import 'package:elearning_platform_mobile/src/data/http_client_wrapper.dart';
import 'package:elearning_platform_mobile/src/models/index.dart';

class WorkshopsApi {
  const WorkshopsApi({@required FirebaseFirestore firestore,
    @required HttpClientWrapper clientWrapper})
      : assert(firestore != null),
        assert(clientWrapper != null),
        _firestore = firestore,
        _clientWrapper = clientWrapper;

  final FirebaseFirestore _firestore;
  final HttpClientWrapper _clientWrapper;

  Future<List<Workshop>> getAllWorkshops() async {
    final Response response = await _clientWrapper.get('workshops');
    final List<dynamic> data = jsonDecode(response.body);

    return data.map((dynamic json) => Workshop.fromJson(json)).toList();
  }

  Future<Workshop> registerToWorkshop(String workshopId) async {
    final Response response =
    await _clientWrapper.patch('workshops/$workshopId', null);
    final Map<String, dynamic> data = jsonDecode(response.body);

    return Workshop.fromJson(data);
  }
}
