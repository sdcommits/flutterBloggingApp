import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_constant.dart';
import 'api_endpoint_urls.dart';

class ApiClient {

  getTags() async {

    final dio = Dio();
    try {
      var response = await dio.get(ApiConstant.mainUrl + ApiEndpointUrls.tags);
      debugPrint(response.statusCode.toString());
      // debugPrint(response.data);
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