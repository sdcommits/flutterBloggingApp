import 'dart:developer';

import 'package:bogging_app/data/data_sources/remote/api_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_constant.dart';
import 'api_endpoint_urls.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions baseOptions;

  ApiClient() {
    final baseOptions = BaseOptions(baseUrl: ApiConstant.mainUrl);
    final dio = Dio(baseOptions);
  }


  //Get request
  Future<Response> getRequest() async {
    final options = BaseOptions(baseUrl: ApiConstant.mainUrl);

    final dio = Dio(options);

    try {
      debugPrint("=========API REQUEST============");
      debugPrint("Request Url: ${baseOptions.baseUrl + ApiEndpointUrls.tags}");
      var response = await dio.get(ApiEndpointUrls.tags);
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


  Future<Response> postRequest() async {
    try {
      debugPrint("=========API REQUEST============");
      debugPrint("Request Url: ${baseOptions.baseUrl + ApiEndpointUrls.tags}");
      var response = await dio.post(ApiEndpointUrls.addTags);
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


