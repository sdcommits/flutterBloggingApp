import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../router/router_import.gr.dart';


@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  static const page = HomeDetailsRoute();
  static const String routeName = 'homeDetails';

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
