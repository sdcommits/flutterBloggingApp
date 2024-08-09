import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

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
    return Scaffold();
  }
}

