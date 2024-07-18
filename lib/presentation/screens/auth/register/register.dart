import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/presentation/router/router_import.gr.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constant/my_assests.dart';
import '../../../../core/constant/my_colors.dart';
import '../../../common_widgets/common_widgets.dart';

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
      backgroundColor: MyColors.primaryColor,
      body:
      SafeArea(
        child: FadedScaleAnimation(
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
                      "Register"
                          .text
                          .size(20)
                          .fontWeight(FontWeight.w700)
                          .color(MyColors.primaryColor)
                          .make().centered(),
                      48.h.heightBox,
                      "Name".text.size(15).fontWeight(FontWeight.normal).make(),
                      8.h.heightBox,
                      const VxTextField(
                        borderColor: Colors.brown,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10,
                        prefixIcon: Icon(Icons.perm_identity),
                      ),

                      20.h.heightBox,
                      "Email".text.size(15).fontWeight(FontWeight.normal).make(),
                      8.h.heightBox,
                      const VxTextField(
                        borderColor: Colors.brown,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10,
                        prefixIcon: Icon(Icons.email),
                      ),


                      20.h.heightBox,
                      "Set Password"
                          .text.size(15)
                          .fontWeight(FontWeight.normal)
                          .make(),
                      8.h.heightBox,
                      const VxTextField(
                        isPassword: true,
                        obscureText: true,
                        borderColor: Colors.brown,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10,
                        prefixIcon: Icon(Icons.lock_open_rounded),
                      ),
                      40.h.heightBox,
                      Row(
                        children: [
                          // CheckboxListTile(value: false, onChanged: (value){}, title: "Remember me".text.make()),
                          "Forgot Password".text
                              .size(14)
                              .make(),
                        ],
                      ),
                      40.h.heightBox,
                      ElevatedButton(
                          onPressed: ()=> AutoRouter.of(context).push( const GeneralPageRoute()),
                          style: ElevatedButton.
                          styleFrom(backgroundColor: MyColors.primaryColor,
                            minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),),
                          child: "Register".
                          text.
                          size(20).
                          fontWeight(FontWeight.w700).
                          color(Colors.white).
                          make()
                      ),
                      15.h.heightBox,
                      "Already have an account".richText
                          .size(15)
                          .bold
                          .color(MyColors.primaryColor)
                          .withTextSpanChildren([
                         TextSpan(
                          text: " Login",
                          recognizer:
                          TapGestureRecognizer()..onTap=()=> AutoRouter.of(context).push(const LoginPageRoute()),
                          style: TextStyle(fontWeight: FontWeight.w700),
                        )
                      ])
                          .make().centered()
                    ],
                  ),
                ),


              )
            ],
          ),
        ),
      ),
      // )

    );
  }
}

