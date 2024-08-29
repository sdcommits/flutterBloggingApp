import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiClient {

  getTags() async {

    final dio = Dio();
    try {
      var response = await dio.get('https://api.pub.dev/not-exit');
      // 404
      await dio.get('https://api.pub.dev/not-exist');
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response.data);
        debugPrint(e.response.headers);
        debugPrint(e.response.requestOptions);
      } else {
        // Something happened in setting up or sending the request that triggered an Error
        print(e.requestOptions);
        print(e.message);
      }
    }

  }
}