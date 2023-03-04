import '../data/api_schemas.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiEvent {
  static Future<dynamic> get() async {
    const url = '${ApiConstants.baseUrl}/events';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<dynamic> post() async {
    const url = '${ApiConstants.baseUrl}/events';
    final response =
        await http.post(Uri.parse(url), body: ApiConstants.eventBodySchema);

    if (response.statusCode == 201) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
