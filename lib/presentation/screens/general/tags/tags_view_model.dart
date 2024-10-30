import 'package:bogging_app/data/repositories/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_bloc/velocity_bloc.dart';

import 'tags_model.dart';

class TagsViewModel{
  final Repository repository;

  TagsViewModel({required this.repository});

  final VelocityBloc<TagsModel> tagsModelBloc =
  VelocityBloc<TagsModel>(TagsModel());
  fetchAllTags() async{
   var tagsData = await repository.tagsRepo.getAllTags();

   if(tagsData.status == 1){
     tagsModelBloc.onUpdateData(tagsData);
   }
  }

}