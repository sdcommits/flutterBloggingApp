import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../router/router_import.gr.dart';

@RoutePage()
class OnBoardPage extends StatelessWidget {
  static const page = OnBoardPageRoute();

  const OnBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/logo/muse-logo-removebg-preview.png",
                  color: MyColors.primaryColor,
                  height: 100,
                  width: 200,
                ),
                PageView(
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/onboardB (1).jpeg"),
                        "Set your goals, Know how much each one will coast. There's a limit to how much you can cut. There's no limit to how much you can earn."
                            .text
                            .size(20)
                            .fontWeight(FontWeight.w500)
                        .align(TextAlign.center)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/onboardB (3).jpeg"),
                        "The ability to do what you want, when you want, with who you want,"
                            " for as long as you want to,"
                            " pays the highest dividend that exists in finance."
                            .text
                            .size(20)
                            .fontWeight(FontWeight.w500)
                            .align(TextAlign.center)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/onboardB (2).jpeg"),
                        "Nothing in life is to be feared.\nIt's only to be understood. Take your TIME"
                            .text
                            .size(20)
                            .fontWeight(FontWeight.w500)
                            .align(TextAlign.center)
                            .color(Colors.black)
                            .make(),
                      ],
                    ),

                  ],
                ).expand(),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.
                    styleFrom(backgroundColor: MyColors.primaryColor,
                        minimumSize: Size(MediaQuery.of(context).size.width, 44),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),),
                    child: "Get Started".
                    text.
                    size(20).
                    fontWeight(FontWeight.w700).
                    color(Colors.white).
                    make()
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  "Skip"
                      .text
                      .size(20)
                      .fontWeight(FontWeight.w700)
                      .color(MyColors.primaryColor)
                      .make(),
                  "Next"
                      .text
                      .size(20)
                      .fontWeight(FontWeight.w700)
                      .color(MyColors.primaryColor)
                      .make()
                ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
