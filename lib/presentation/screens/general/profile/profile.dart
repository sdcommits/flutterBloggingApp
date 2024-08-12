import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // actions: [
        //   Icons(FeatherIcons.eye)
        // ],
        title: Text("Profile", style: TextStyle(color: Colors.white),), backgroundColor: MyColors.primaryColor,
      ),
      body: Container(
        height: 500,
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
            "sheenamdubey@gmail.com".text.xl.white.make(),
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



      )
    );
  }
}
