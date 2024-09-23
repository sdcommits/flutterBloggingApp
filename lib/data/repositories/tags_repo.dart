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

        var mapData = response.data;
        Vx.log(mapData);

        var stringData = jsonDecode(response.data);
        Vx.log(stringData);

        // final responseData = tagsModelFromJson(response.data);
         // return responseData;
        // Vx.log(responseData);
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