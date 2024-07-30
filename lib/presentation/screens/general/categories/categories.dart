import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar
        (
        title: "Categories".text.size(20).make(),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(FeatherIcons.plus))
        ]
      ),

      body:
         Center(child: Text("This is Categories")),

    );
  }
}
