import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class HttpClientWrapper {
  const HttpClientWrapper({@required this.client}) : assert(client != null);

  final Client client;

  // localhost testing
  static const String URL = '192.168.56.1:8080';

  Future<Response> get(String route) async {
    return await client.get(
      Uri.http(URL, '/api/' + route),
      headers: <String, String>{'Content-Type': 'application/json'},
    );
  }

  Future<Response> post(String route, dynamic body) async {
    return await client.post(
      Uri.http(URL, '/api/' + route),
      body: body,
      headers: <String, String>{'Content-Type': 'application/json'},
    );
  }
}
