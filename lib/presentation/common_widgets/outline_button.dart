import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Outline_Button extends StatelessWidget {
  const Outline_Button({super.key,
  required this.title,
  required this.onPressed});

  final String title;
  final VoidCallback onPressed;



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: (){},
        style: ElevatedButton.
        styleFrom(backgroundColor: Colors.transparent,
          minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(11.r)),),
        child:title.text.size(20.sp).fontWeight(FontWeight.w700).color(Colors.white).make(),


    );
  }
}

