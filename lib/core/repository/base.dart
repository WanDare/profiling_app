import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseRepository extends GetConnect {
  @protected
  static const _apiKey = '';
  final url = '';
  final headers = {'Authorization': 'Bearer $_apiKey'};

  Future<dynamic> checkError(Response response) async {
    if (response.statusCode == 401) {
      final data = json.decode(response.body);
      print(data['records']);
      return data['records'];
    } else {
      final data = json.decode(response.body);
      final error = data['error'];
      throw Exception(error['message']);
    }
  }
}
