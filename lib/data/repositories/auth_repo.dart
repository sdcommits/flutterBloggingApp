import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import '../../presentation/screens/auth/login/login_model.dart';
import '../../presentation/screens/general/tags/tags_model.dart';
import '../data_sources/remote/api_client.dart';
import '../data_sources/remote/api_endpoint_urls.dart';

class AuthRepo extends ApiClient{
  AuthRepo();

  Future<LoginModel> userLogin(String email, String password) async{
    Map body = {
      "email":email,
      "password":password,
    };
    try{
      final response =  await postRequest(path: ApiEndpointUrls.login, body: body);
      if(response.statusCode == 200){

        final responseData = loginModelFromJson(jsonEncode(response.data));
        return responseData;

      }
      else{
        LoginModel();
      }
    }
    on Exception catch(e){
      Vx.log(e);
      LoginModel();
    }
    return LoginModel();

  }

//   postRequest({required String path, required Map body}) {}
}