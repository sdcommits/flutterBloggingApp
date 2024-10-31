import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:bogging_app/data/repositories/repository.dart';
import 'package:bogging_app/presentation/common_widgets/common_widgets.dart';
import 'package:bogging_app/presentation/router/router_import.gr.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../core/constant/my_assests.dart';
import 'login_view_model.dart';

@RoutePage()
class Login extends StatefulWidget {

  static const page = LoginPageRoute();
  static const String routeName = 'login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late LoginViewModel loginViewModel;

  @override
  void initState(){
    loginViewModel = LoginViewModel(repository: context.read<Repository>());
    super.initState();
  }
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
                Form(
                  key: loginViewModel.formKey,
                  child: Container(
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
                             VxTextField(
                              borderColor: Colors.brown,
                               borderType: VxTextFieldBorderType.roundLine,
                               borderRadius: 10,
                               prefixIcon: const Icon(Icons.email),
                               controller: loginViewModel.emailController,
                               validator: (email){
                                if(email!.isEmpty){
                                  return "Email is empty";

                                }
                                return null;
                               },
                            ),


                            20.h.heightBox,
                            "Password".text.size(15).fontWeight(FontWeight.normal).make(),
                            8.h.heightBox,
                            VxTextField(
                              isPassword: true,
                              obscureText: true,
                              borderColor: Colors.brown,
                              borderType: VxTextFieldBorderType.roundLine,
                              borderRadius: 10,
                              prefixIcon: const Icon(Icons.lock_open_rounded),
                              controller: loginViewModel.passwordController,
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
                            50.h.heightBox,
                            // PrimaryButton(title: "Login", onPressed: (){}),

                            ElevatedButton(
                                onPressed: () {
                                  if(loginViewModel.formKey.currentState!.validate()){
                                    loginViewModel.login(context);
                                  }else if(email.isValidEmail)

                                },
                                // AutoRouter.of(context).push( const GeneralPageRoute()),
                                style: ElevatedButton.
                                styleFrom(backgroundColor: MyColors.primaryColor,
                                  minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),),
                                child: "Login".
                                text.
                                size(20).
                                fontWeight(FontWeight.w700).
                                color(Colors.white).
                                make()
                            ),
                            15.h.heightBox,
                            "Don't have any account".richText
                                .size(15)
                                .bold
                            .color(MyColors.primaryColor)
                                .withTextSpanChildren([
                              TextSpan(
                                text: " SignUp",
                                recognizer:
                                TapGestureRecognizer()..onTap=()=> AutoRouter.of(context).push(const RegisterPageRoute()),

                                style: TextStyle(fontWeight: FontWeight.w700),
                              )
                            ])
                                .make().centered()
                          ],
                        ),
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
