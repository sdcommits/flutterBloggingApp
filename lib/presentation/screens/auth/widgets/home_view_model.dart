import 'package:bogging_app/data/repositories/repository.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';

import 'home_model.dart';

class HomeViewModel{
  final Repository repository;
  HomeViewModel({required this.repository});

  final VelocityBloc<HomeModel> postsBloc =
  VelocityBloc<HomeModel>(HomeModel());

  fetchAllPosts() async {
    var postsData = await repository.postsRepo.getAllPosts();
    if(postsData.status == 1){
      postsBloc.onUpdateData(postsData);
    }

  }
}

