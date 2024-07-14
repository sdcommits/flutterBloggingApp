import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardSecond extends StatelessWidget {
  const OnBoardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/onboardB (2).jpeg",height: 233.h, width: 333.w,),
        "Nothing in life is to be feared.\nIt's only to be understood. Take your TIME"
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
