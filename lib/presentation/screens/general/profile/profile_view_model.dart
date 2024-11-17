import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/data/repositories/repository.dart';
import 'package:bogging_app/utils/utils.dart';

import '../../../router/router_import.gr.dart';

class ProfileViewModel{
  final Repository repository;

  ProfileViewModel({required this.repository});

  logout(context) async{
    var data = await repository.authRepo.userLogout(context);
    if( data.message != null){
      Utils.clearAllSavedData();
      AutoRouter.of(context).push(const AuthPageRoute());
    }
  }

}
