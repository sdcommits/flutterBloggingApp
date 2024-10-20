
import 'package:velocity_x/velocity_x.dart';

import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';

class AuthRepo extends ApiC lient{
  AuthRepo();

  Future<TagsModel> getAllTags(String email, String password) async{
    Map body = {
      "email":email,
      "password":password,
    };
    try{
      final response =  await postRequest(path: ApiEndpointUrls.login, body: body);
      if(response.statusCode == 200){

        final responseData = tagsModelFromJson(jsonEncode(response.data));

        // var mapData = response.data;
        // Vx.log(mapData);

        //1 st solution
        // var stringData = tagsModelFromJson(jsonEncode(response.data));
        // Vx.log(stringData);

        // 2 nd solution'
        // var responseData = TagsModel.fromJson(response.data);
        return responseData;

      }
      else{
        TagsModel();
      }
    }
    on Exception catch(e){
      Vx.log(e);
      TagsModel();
    }
    return TagsModel();

  }

  postRequest({required String path, required Map body}) {}
}