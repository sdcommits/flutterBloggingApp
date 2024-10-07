import 'dart:convert';

import 'package:bogging_app/data/data_sources/remote/api_client.dart';
import 'package:bogging_app/data/data_sources/remote/api_endpoint_urls.dart';
import 'package:bogging_app/presentation/screens/general/tags/tags_model.dart';
import 'package:velocity_x/velocity_x.dart';

class TagsRepo extends ApiClient{
  TagsRepo();

 Future<TagsModel> getAllTags() async{
    try{
      final response =  await getRequest(path: ApiEndpointUrls.tags);
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
}