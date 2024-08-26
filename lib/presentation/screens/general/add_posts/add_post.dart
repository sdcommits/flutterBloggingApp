import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class AddPosts extends StatefulWidget {
  const AddPosts({super.key});

  @override
  State<AddPosts> createState() => _AddPostsState();
}

class _AddPostsState extends State<AddPosts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Add Post", style:
          TextStyle(color: Colors.white),),
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: (){}, icon: Icon(FeatherIcons.check), color: Colors.white,)]
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
                40.h.heightBox,
              Image.network(
                "https://thumbs.dreamstime.com/b/placeholder-icon-vector-isolated-white-background-your-web-mobile-app-design-placeholder-logo-concept-placeholder-icon-134071364.jpg",
        height: 250,width: 500,
              ),
              IconButton(onPressed: (){}, icon: Icon(FeatherIcons.camera), color: Colors.black,),
            ],
          ),
          40.h.heightBox,
          const VxTextField(
            borderColor: Colors.brown,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
           hint: "Title",
          ),
          20.h.heightBox,
          const VxTextField(
            borderColor: Colors.brown,
            borderType: VxTextFieldBorderType.roundLine,
            borderRadius: 10,
            hint: "Slug",
          ),
          20.h.heightBox,
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10)
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Tags".text.make(),
                  Icon(FeatherIcons.chevronRight)
                ],
              ),
            ),
          ),

          20.h.heightBox,
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  "Categoiries".text.make(),
                  Icon(FeatherIcons.chevronRight)
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
