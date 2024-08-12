import 'package:auto_route/annotations.dart';
import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../router/router_import.gr.dart';

@RoutePage()
class HomeDetails extends StatefulWidget {

  static const page = HomeDetailsRoute();
  static const String routeName = 'homeDetails';
  const HomeDetails({super.key});

  @override
  State<HomeDetails> createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: Text("Netfix Will Charge Money for Password Sharing", style:
          TextStyle(
            color: Colors.white,
          ),),
      ),

      body: Column(
        children: [
          Image.asset( MyAssests.assetsImageNetFlix),
      10.heightBox,
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            "Netfix Will Charge Money for Password Sharing"
                .text
                .bold
                .xl2
                .make(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [const Icon(FeatherIcons.eye, color: Colors.grey,),
                " 147 views".text.color(Colors.grey[700]).make(),
              Spacer(),

              IconButton(onPressed: (){},icon: const
              Icon(FeatherIcons.thumbsUp,
                color: Colors.green,),),
                "0".text.color(Colors.grey[700]).make(),

                IconButton(onPressed: (){}, icon: const
                Icon(FeatherIcons.thumbsDown,
                    color: Colors.red,),),
                "0".text.color(Colors.grey[700]).make(),

              ],
            )
          ],
        ),
      )

        ],

      )
      ,
    );
  }
}

