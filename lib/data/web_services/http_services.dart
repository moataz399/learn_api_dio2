// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn_api_dio/constants/strings.dart';

class UserServices {
  late Dio _dio;

  UserServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );

    _dio = Dio(options);
  }

  Future<List<dynamic>> getUserData() async {
    Response response;
    try {
      response = await _dio.get('/api/users?page=2');
      print(response.data.toString());

      print(response.data['data'].toString());
      return response.data['data'];
    } on DioError catch (e) {
    debugPrint(e.toString());
      return [];
    }
  }
}
