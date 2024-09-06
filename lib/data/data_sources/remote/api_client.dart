import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_constant.dart';
import 'api_endpoint_urls.dart';

class ApiClient {

  getTags() async {



    final options = BaseOptions(
      baseUrl : ApiConstant.mainUrl,
      // dio.options.baseUrl = 'https://api.pub.dev';
      // dio.options.connectTimeout: Duration(Second: 5);
    );

    final dio = Dio(options);

    try {
      debugPrint("=========API REQUEST============");
      debugPrint("Request Url: ${options.baseUrl + ApiEndpointUrls.tags}");
      var response = await dio.get(ApiEndpointUrls.tags);
      debugPrint("=========API RESPONSE============");
      debugPrint("Status Code : ${response.statusCode}");
      log("DATA: ${response.data}");
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
      } else {
        debugPrint(e.requestOptions.toString());
        debugPrint(e.message);
      }
    }

  }
}