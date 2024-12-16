import 'dart:convert';
import 'dart:developer';

import 'package:bw1_ui/model/notification_model.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const _notification =
      "https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json";

  Future<List<MyNotification>> dataFetching() async {
    try {
      final response = await http.get(Uri.parse(_notification));
      if (response.statusCode == 200) {
        // Success:Handle the response body
        // print('Success: ${response.body}');
        final decodeData = jsonDecode(response.body)['data'] as List;
        return decodeData
            .map(
              (e) => MyNotification.fromMap(e),
            )
            .toList();
      } else if (response.statusCode == 404) {
        // Resource not found
        print('Error: Resource not found (404)');
      } else if (response.statusCode == 500) {
        // Server error
        print('Error: Internal server error (500)');
      }
      else {
        // Other status codes
        print('Error: ${response.statusCode}');
      } 
    } catch (e) {
      log("notification Error${e}");
    }
    return [];
  }
}
