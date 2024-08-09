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
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.primaryColor,

        actions: [
          IconButton(onPressed: (){}, icon: Icon(FeatherIcons.plus))
        ]
      ),

      body:
         ListView.separated(
           itemCount: 10,
             itemBuilder: (context, index) => const SizedBox(height: 20), separatorBuilder: (BuildContext context, int index) {
             return Card(
               child : ListTile(
                 leading: "${index+1}".text.size(16).make() ,
                 title: "Enter".text.size(20).make(),
                 trailing: SizedBox(
                   width: 100,
                   child: Row(
                     children: [
                       IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.edit, color: Colors.green,)),
                       IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.delete , color: Colors.red,)),

                     ],

                   ),
                 ),

               ),

             );
         },

             )

    );
  }
}
