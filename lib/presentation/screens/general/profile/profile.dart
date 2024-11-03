import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:bogging_app/presentation/screens/general/profile/profile_view_model.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: ListView(
        children: [
        Container(
          height: 430,
          width: MediaQuery.sizeOf(context).width,
          decoration:const  BoxDecoration(
            color: MyColors.primaryColor,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50))
          ),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(MyAssests.assetsImageNetFlix),
              ),
              10.h.heightBox,
              "Sheenam Dubey".text.xl2.white.bold.make(),
              8.h.heightBox,
              "sheenamdubey@muse.com".text.xl.white.make(),
              20.h.heightBox,
              "Sheenam Dubey is a software engineering student"
                  " who is more passionate in android development."
                  "Her ambition towards technology is huge.".text.xl.white.center.make().pSymmetric(h: 11),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        "0".text.center.white.xl2.make(),
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
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount
                    (crossAxisCount: 2,
                      crossAxisSpacing: 10,
                  childAspectRatio: 0.9),
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Image.asset(MyAssests.assetsImageNetFlix)
                            .cornerRadius(10),
                        6.h.heightBox,
                        Row(
                          children: [
                            "This is your netflix post, that you have posted"
                                .text.make().expand(),
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
      )
    );
  }
}
