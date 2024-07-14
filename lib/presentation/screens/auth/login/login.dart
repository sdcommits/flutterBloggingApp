import 'package:auto_route/annotations.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:bogging_app/presentation/common_widgets/common_widgets.dart';
import 'package:bogging_app/presentation/router/router_import.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constant/my_assests.dart';

@RoutePage()
class Login extends StatefulWidget {

  static const page = LoginPageRoute();
  static const String routeName = 'login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
     body:
        SafeArea(
          child: ListView(
            // child: Column(
              children: [
                Image.asset(MyAssests.mainLogo,
                    height: 80.h,
                    width: 139.w).centered(),
              100.heightBox,
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration
                  (
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),
                    topLeft: Radius.circular(40)
                  )
                ),
                child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        50.h.heightBox,
                        "Login"
                            .text
                            .size(20)
                            .fontWeight(FontWeight.w700)
                            .color(MyColors.primaryColor)
                            .make().centered(),
                        48.h.heightBox,
                        "Email".text.size(15).fontWeight(FontWeight.normal).make(),
                        8.h.heightBox,
                         const VxTextField(
                          borderColor: Colors.brown,
                           borderType: VxTextFieldBorderType.roundLine,
                           borderRadius: 10,
                           prefixIcon: Icon(Icons.email),
                        ),


                        20.h.heightBox,
                        "Password".text.size(15).fontWeight(FontWeight.normal).make(),
                        8.h.heightBox,
                        const VxTextField(
                          isPassword: true,
                          obscureText: true,
                          borderColor: Colors.brown,
                          borderType: VxTextFieldBorderType.roundLine,
                          borderRadius: 10,
                          prefixIcon: Icon(Icons.lock_open_rounded),
                        ),
                        200.h.heightBox,
                        PrimaryButton(title: "Login", onPressed: (){}),
                        15.h.heightBox,
                        "Don't have any account".richText.size(15).bold.withTextSpanChildren([
                          const TextSpan(
                            text: " SignUp"
                          )
                        ])
                            // .text.size(15)
                            // .fontWeight(FontWeight.w700)
                            // .color(MyColors.primaryColor)
                            //
                            .make().centered()
                      ],
                    ),
                  ),


              )
              ],
            ),
          ),
        // )

    );
  }
}
