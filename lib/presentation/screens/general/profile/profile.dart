import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:bogging_app/presentation/screens/general/profile/profile_model.dart';
import 'package:bogging_app/presentation/screens/general/profile/profile_view_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_bloc/cubit/velocity_cubit/velocity_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../data/repositories/repository.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

 late ProfileViewModel profileViewModel;
 @override
 void initState(){
   profileViewModel = ProfileViewModel(repository: context.read<Repository>());
   profileViewModel.getUserProfileData();
   super.initState();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: ()=> profileViewModel.logout(context),
            icon: const Icon(FeatherIcons.logOut).pOnly(right: 10),)

        ],
        title: Text("Profile", style: TextStyle(color: Colors.white),), backgroundColor: MyColors.primaryColor,
      ),
      body: BlocBuilder<VelocityBloc<ProfileModel>, VelocityState<ProfileModel>>(
        bloc: profileViewModel.profileModelBloc,
  builder: (context, state) {
   if(state is VelocityInitialState){
     return const Center(
       child: CircularProgressIndicator.adaptive(),
     );
   }
   else if(state is VelocityUpdateState){
     return RefreshIndicator(
       onRefresh: ()=> profileViewModel.getUserProfileData(),
       child: ListView(
           children: [
             Container(
               height: 430,
               width: MediaQuery.sizeOf(context).width,
               decoration:const  BoxDecoration(
                   color: MyColors.primaryColor,
                   borderRadius: BorderRadius.only(
                       bottomRight: Radius.circular(50),
                       bottomLeft: Radius.circular(50))
               ),
               child: Column(
                 children: [
                   CircleAvatar(
                     radius: 60,
                     backgroundImage:
                          NetworkImage(state.
                          data.userDetails!.profilePhotoUrl.
                          toString()),
                   ),
                   10.h.heightBox,
                   state.data.userDetails!.name!.text.xl2.white.bold.make(),
                   8.h.heightBox,
                   state.data.userDetails!.email!.text.xl.white.make(),
                   20.h.heightBox,
                   state.data.userDetails!.about!.text.xl.white.center.make().pSymmetric(h: 11),
                   10.heightBox,
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           children: [
                             state.data.postsCount!.text.center.white.xl2.make(),
                             "posts".text.center.white.xl2.make(),
                           ],
                         ),
                         Column(
                           children: [
                             "0".text.center.white.xl2.make(),
                             "Followings".text.center.white.xl2.make(),
                           ],
                         ),
                         Column(
                           children: [
                             "0".text.center.white.xl2.make(),
                             "Followers".text.center.white.xl2.make(),
                           ],
                         )
                       ],
                     ),
                   )

                 ],
               ),
             ),

             20.h.heightBox,
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   "My Posts".text.bold.xl3.make(),
                   10.h.heightBox,
                   GridView.builder(
                       itemCount: state.data.posts!.length,
                       shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                       gridDelegate:
                       const SliverGridDelegateWithFixedCrossAxisCount
                         (crossAxisCount: 2,
                           crossAxisSpacing: 10,
                           childAspectRatio: 0.9),
                       itemBuilder: (context, index){
                         var userPostsData = state.data.posts![index];
                         var imagePath = userPostsData.featuredimage
                             .toString()
                         .prepend('https://techblog.codersangam.com/')
                             .replaceAll("public", "storage");
                         return Column(
                           children: [
                             CachedNetworkImage(imageUrl: imagePath.toString())
                             //Image.network(MyAssests.assetsImageNetFlix)
                                 .cornerRadius(10),
                             6.h.heightBox,
                             Row(
                               children: [
                                 userPostsData.title!
                                     .text.maxLines(2).make()
                                     .expand(),
                                 IconButton(onPressed: (){}, icon: Icon(FeatherIcons.moreVertical)),

                               ],
                             )
                           ],

                         );
                       }

                   )
                 ],
               ),
             ),

           ]
       ),
     );
   }
   return const SizedBox();
  },
)
    );
  }
}
