import 'package:auto_route/annotations.dart';
import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:bogging_app/presentation/screens/auth/widgets/home_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../router/router_import.gr.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {

  //static const page = HomeDetailsRoute();
  static const String routeName = 'homeDetails';
  const HomeDetails({super.key,required this.post, required this.imagePath});
  final Post post;

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
      //   title: const Text("Netfix Will Charge Money for Password Sharing",
      //     style:
      //   TextStyle(
      //     color: Colors.white,
      //   ),),
      // ),
        title: post.title!
            .text
            .ellipsis
            .make(),
      ),

      body: ListView(

        children: [
         CachedNetworkImage( imageUrl : imagePath),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child: Column(
                children: [
                  "Netfix Will Charge Money for Password Sharing"
                      .text
                      .bold
                      .xl2
                      .make(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [const Icon(FeatherIcons.eye, color: Colors.grey,),
                        8.w.widthBox,
                        "147 views".text.color(Colors.grey[700]).make(),
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
                    ),
                  ),
                  "At Netflix, we want to entertain the world. Whatever your taste, and"
                      " no matter where you live, we give you access to best-in-class TV "
                      "series, documentaries, feature films and games. Our members control "
                      "what they want to watch, when they want it, in one simple subscription."
                      " We’re streaming in more than 30 languages and 190 countries, because"
                      " great stories can come from anywhere and be loved everywhere. We are "
                      "the world’s biggest fans of entertainment, and we’re always looking to"
                      " help you find your next favorite story. In 2007 Netflix introduced "
                      "streaming services that allowed subscribers to access content directly "
                      "over the Internet. Streaming quickly gained momentum, becoming unlimited "
                      "for most subscription plans. Netflix partnered with makers of video game "
                      "consoles, Blu-ray players, and other electronics to enable video streaming "
                      "on those devices. Netflix introduced a streaming-only plan by 2010 and that"
                      " same year introduced an app for iPhones (the app became available on some "
                      "Android devices by 2011). The company initiated its global expansion to"
                      " Canada, Latin America, the Caribbean, and Europe by 2012, reaching more "
                      "than 190 countries and territories by 2016.".text.make()
                ],
              ),
            ),
          )

        ],

      ),
    );
    // );
  }
}






















































// import 'package:auto_route/annotations.dart';
// import 'package:bogging_app/core/constant/my_assests.dart';
// import 'package:bogging_app/core/constant/my_colors.dart';
// import 'package:feather_icons/feather_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// import '../../../router/router_import.gr.dart';
// import 'home_model.dart';
//
// @RoutePage()
// class HomeDetails extends StatefulWidget {
//
//  // static const page = HomeDetailsRoute(post: null);
//   static const String routeName = 'homeDetails';
//   final Post post;
//   const HomeDetails({super.key,required this.post});
//   //const HomeDetails({super.key, required this.post});
//   @override
//   State<HomeDetails> createState() => _HomeDetailsState();
// }
//
// class _HomeDetailsState extends State<HomeDetails> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: MyColors.primaryColor,
//         title: const Text("Netfix Will Charge Money for Password Sharing", style:
//           TextStyle(
//             color: Colors.white,
//           ),),
//       ),
//
//       body: ListView(
//
//           children: [
//             Image.asset( MyAssests.assetsImageNetFlix),
//         10.heightBox,
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 6),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
//             child: Column(
//               children: [
//                 "Netfix Will Charge Money for Password Sharing"
//                     .text
//                     .bold
//                     .xl2
//                     .make(),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 6),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [const Icon(FeatherIcons.eye, color: Colors.grey,),
//                       8.w.widthBox,
//                       "147 views".text.color(Colors.grey[700]).make(),
//                     Spacer(),
//
//                     IconButton(onPressed: (){},icon: const
//                     Icon(FeatherIcons.thumbsUp,
//                       color: Colors.green,),),
//                       "0".text.color(Colors.grey[700]).make(),
//
//                       IconButton(onPressed: (){}, icon: const
//                       Icon(FeatherIcons.thumbsDown,
//                           color: Colors.red,),),
//                       "0".text.color(Colors.grey[700]).make(),
//                     ],
//                   ),
//                 ),
//                 "At Netflix, we want to entertain the world. Whatever your taste, and"
//                     " no matter where you live, we give you access to best-in-class TV "
//                     "series, documentaries, feature films and games. Our members control "
//                     "what they want to watch, when they want it, in one simple subscription."
//                     " We’re streaming in more than 30 languages and 190 countries, because"
//                     " great stories can come from anywhere and be loved everywhere. We are "
//                     "the world’s biggest fans of entertainment, and we’re always looking to"
//                     " help you find your next favorite story. In 2007 Netflix introduced "
//                     "streaming services that allowed subscribers to access content directly "
//                     "over the Internet. Streaming quickly gained momentum, becoming unlimited "
//                     "for most subscription plans. Netflix partnered with makers of video game "
//                     "consoles, Blu-ray players, and other electronics to enable video streaming "
//                     "on those devices. Netflix introduced a streaming-only plan by 2010 and that"
//                     " same year introduced an app for iPhones (the app became available on some "
//                     "Android devices by 2011). The company initiated its global expansion to"
//                     " Canada, Latin America, the Caribbean, and Europe by 2012, reaching more "
//                     "than 190 countries and territories by 2016.".text.make()
//               ],
//             ),
//           ),
//         )
//
//           ],
//
//         ),
//       );
//     // );
//   }
// }
//














