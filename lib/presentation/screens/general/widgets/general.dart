import 'package:auto_route/annotations.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
