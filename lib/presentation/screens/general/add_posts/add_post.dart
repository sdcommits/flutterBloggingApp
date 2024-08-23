import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

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
        title: Text("Add Post"),
        backgroundColor: MyColors.primaryColor,
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: (){}, icon: Icon(FeatherIcons.check),)]
      ),

      body: Center(
        child: Text("This is the add post page "),
      ),
    );
  }
}
