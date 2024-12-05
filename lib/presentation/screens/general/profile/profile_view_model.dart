import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/data/repositories/repository.dart';
import 'package:bogging_app/presentation/screens/general/profile/profile_model.dart';
import 'package:bogging_app/utils/utils.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

import '../../../router/router_import.gr.dart';

class ProfileViewModel{
  final Repository repository;

  ProfileViewModel({required this.repository});

  final VelocityBloc<ProfileModel> profileModelBloc =
  VelocityBloc<ProfileModel>(ProfileModel());

  getUserProfileData() async{
    var userProfileData = await repository.postsRepo.getUserPosts();
    if(userProfileData.status == 1){
      profileModelBloc.onUpdateData(userProfileData);
    }
  }


  logout(context) async{
    var data = await repository.authRepo.userLogout(context);
    if( data.message != null){
      Utils.clearAllSavedData();
      AutoRouter.of(context).push(const AuthPageRoute());
    }
  }

}
