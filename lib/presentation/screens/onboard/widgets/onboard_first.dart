import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardFirst extends StatelessWidget {
  const OnBoardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboardB (1).jpeg",height: 233.h, width: 333.w,),
        "Set your goals, Know how much each one will coast. There's a limit to how much you can cut. There's no limit to how much you can earn."
            .text
            .size(20.sp)
            .fontWeight(FontWeight.w500)
            .align(TextAlign.center)
            .color(Colors.black)
            .make(),
      ],
    );
  }
}
