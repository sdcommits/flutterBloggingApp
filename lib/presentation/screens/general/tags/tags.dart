import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:bogging_app/presentation/screens/general/tags/tags_model.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../data/repositories/repository.dart';
import '../../../../data/repositories/tags_repo.dart';
import 'tags_view_model.dart';


class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  late TagsViewModel tagsViewModel;

  @override
  void initState() {
    tagsViewModel = TagsViewModel(repository: context.read<Repository>());
    tagsViewModel.fetchAllTags();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: "Tags".text.size(20).make(),
            automaticallyImplyLeading: false,
            backgroundColor: MyColors.primaryColor,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(FeatherIcons.plus))
            ]
        ),

        body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
          // bloc: tagsViewModel.tagsModelBloc,
          builder: (context, state) {
            if (state is VelocityInitialState) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            else if(state is VelocityUpdateState){

              return ListView.separated(

                        itemCount: state.data.tags!.length,
                separatorBuilder: (context, index) => const SizedBox(height: 20),
                itemBuilder: (context, index) {
                          var tagsData = state.data.tags![index];
                        return Card(
                            child: ListTile(
                                    leading: "${index + 1}".text.size(16).make(),
                                      title: "Enter".text.size(20).make(),
                                        trailing: SizedBox(
                                          width: 100,
                                          child: Row(
                                            children: [
                              IconButton(onPressed: () {},
                                        icon: const Icon(
                                          FeatherIcons.edit, color: Colors.green,)),
                                    IconButton(onPressed: () {},
                                           icon: const Icon(
                                              FeatherIcons.delete, color: Colors.red,)),

  ],

  ),
  ),

  ),

  );
  },

  );
};
            return SizedBox();
                  }
          // },

        ),
    );
  }
}
//-------------------------------------------------------------------------------



// --------------------------------

//
// import 'package:bogging_app/core/constant/my_colors.dart';
// import 'package:bogging_app/presentation/screens/general/tags/tags_model.dart';
// import 'package:bogging_app/presentation/screens/general/tags/tags_view_model.dart';
// import 'package:feather_icons/feather_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
// // import 'package:velocity_bloc/velocity_bloc.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// import '../../../../data/repositories/repository.dart';
//
//
// class Tags extends StatefulWidget {
//   const Tags({super.key});
//
//   @override
//   State<Tags> createState() => _TagsState();
// }
//
// class _TagsState extends State<Tags> {
//   late TagsViewModel tagsViewModel;
//   @override
//   void initState(){
//      tagsViewModel = TagsViewModel(repository: context.read<Repository>());
//      tagsViewModel.fetchAllTags();
//       super.initState();
//   }
//   @override
//     Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: "Tags".text.size(20).make(),
//             automaticallyImplyLeading: false,
//             backgroundColor: MyColors.primaryColor,
//             actions: [
//               IconButton(onPressed: (){}, icon: Icon(FeatherIcons.plus))
//             ]
//         ),
//
//         body: BlocBuilder<VelocityBloc<TagsModel>, VelocityState<TagsModel>>(
//           // bloc: tagsViewModle.tagsModelBloc,
//   builder: (context, state) {
//     return ListView.separated(
//           itemCount: 10,
//           itemBuilder: (context, index) => const SizedBox(height: 20), separatorBuilder: (BuildContext context, int index) {
//           return Card(
//             child : ListTile(
//               leading: "${index+1}".text.size(16).make() ,
//               title: "Enter".text.size(20).make(),
//               trailing: SizedBox(
//                 width: 100,
//                 child: Row(
//                   children: [
//                     IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.edit, color: Colors.green,)),
//                     IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.delete , color: Colors.red,)),
//
//                   ],
//
//                 ),
//               ),
//
//             ),
//
//           );
//         },
//
//         );
//   },
// )
//
//     );
//   }
// }
//
