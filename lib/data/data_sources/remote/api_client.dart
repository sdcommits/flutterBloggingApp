import 'dart:developer';

import 'package:bogging_app/data/data_sources/remote/api_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'api_constant.dart';
import 'api_endpoint_urls.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(baseOptions);
  }

  //Get request
  Future<Response> getRequest({required String path}) async {
    final options = BaseOptions(baseUrl: ApiConstant.mainUrl);

    final dio = Dio(options);


    try {
      debugPrint("=========API REQUEST============");
      debugPrint("Request Url: ${baseOptions.baseUrl + path}");
      var response = await dio.get(path);
      debugPrint("=========API RESPONSE============");
      debugPrint("Status Code : ${response.statusCode}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }

  Future<Response> postRequest({required String path}) async {
    Map body = {"title": "newdellbag2", "slug": "newdellbag2"};
    final options = Options(
      headers: {"Authorization" :
      "Bearer 94|Qwer"},

    );

    try {
      debugPrint("=========API REQUEST============");
      debugPrint("Request Url: ${baseOptions.baseUrl + path}");
      var response = await dio.post(path, data : body, options: options);
      debugPrint("=========API RESPONSE============");
      debugPrint("Status Code : ${response.statusCode}");
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage);
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.message);
      }
    }
  }
}
