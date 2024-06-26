import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router_import.gr.dart';

@RoutePage()
class OnBoardPage extends StatelessWidget {
  static const page = OnBoardPageRoute();

  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Onboard"),
      ),
    );
  }
}
