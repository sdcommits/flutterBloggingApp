import 'package:auto_route/annotations.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../../../router/router_import.gr.dart';

@RoutePage()

class General extends StatefulWidget {

  static const page = GeneralPageRoute();
  static const String routeName = 'general';
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {

  List<TabItem> items = [
    const TabItem(
      icon:  FeatherIcons.home,
      // title: 'Home',
    ),
    const TabItem(
      icon: Icons.tag,
      title: 'Shop',
    ),
    const TabItem(
      icon: Icons.add,
      title: 'Wishlist',
    ),
    const TabItem(
      icon: Icons.hotel_outlined,
      title: 'Cart',
    ),
    const TabItem(
      icon: Icons.perm_identity,
      title: 'profile',
    ),
  ];

  int visit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor : Colors.white.withOpacity(0.21),
        color: MyColors.primaryColor ,
        indexSelected: visit,
        colorSelected: MyColors.primaryColor,
        onTap: (int index) => setState((){
          visit = index;
        }),
      )
    );
  }
}
