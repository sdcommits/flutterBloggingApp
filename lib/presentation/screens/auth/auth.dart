import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:bogging_app/presentation/common_widgets/common_widgets.dart';
import 'package:bogging_app/presentation/router/router_import.gr.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/constant/my_colors.dart';


@RoutePage()
class Auth extends StatefulWidget {
  static const page = AuthPageRoute();
  static const String routeName = 'auth';
  // const Auth({Key? key}) : super(key: key);
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyAssests.assetsImageAuthBg),
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(MyAssests.mainLogo, height: 80.h, width: 139.w).centered(),

                400.heightBox,
                // Spacer(),

                "Explore the world,\n Billions of Thoughts"
                .text
                .size(28.sp)
                .align(TextAlign.left)
                .fontWeight(FontWeight.w700)
                .color(Colors.white)
                .make(),

                20.h.heightBox,
                ElevatedButton(
                    onPressed: ()=> AutoRouter.of(context).push( const LoginPageRoute()),
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
                12.h.heightBox,
                ElevatedButton(
                    onPressed: ()=>AutoRouter.of(context).push(const RegisterPageRoute()),
                    style: ElevatedButton.
                    styleFrom(backgroundColor: Colors.transparent,
                      minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                      shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(11.r)),),
                    child: "Register ".
                    text.
                    size(20).
                    fontWeight(FontWeight.w700).
                    color(Colors.white).
                    make()
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
