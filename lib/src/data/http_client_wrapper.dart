 import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class HttpClientWrapper {
  const HttpClientWrapper({@required this.client}) : assert(client != null);

  final Client client;

  // localhost testing
  static const String URL = '192.168.0.185:8080';

  Future<Response> get(String route, [dynamic queryParams]) async {
    return await client.get(
      Uri.http(URL, '/api/' + route, queryParams),
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

  Future<Response> delete(String route) async {
    return await client.delete(
      Uri.http(URL, '/api/' + route),
      headers: <String, String>{'Content-Type': 'application/json'},
    );
  }

  Future<Response> patch(String route, dynamic body) async {
    return await client.patch(
      Uri.http(URL, '/api/' + route),
      body: body,
      headers: <String, String>{'Content-Type': 'application/json'},
    );
  }
}
