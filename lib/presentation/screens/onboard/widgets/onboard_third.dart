import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardThird extends StatelessWidget {
  const OnBoardThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboardB (3).jpeg", height: 233.h, width: 333.w,),
        "The ability to do what you want, when you want, with who you want,"
            " for as long as you want to,"
            " pays the highest dividend that exists in finance."
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
