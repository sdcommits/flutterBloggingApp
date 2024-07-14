import 'package:auto_route/annotations.dart';
import 'package:bogging_app/presentation/router/router_import.gr.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class Register extends StatefulWidget {

  static const page = RegisterPageRoute();
  static const String routeName = 'register';
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register")
      ),
    );
  }
}

