import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/constant/my_colors.dart';

class PrimaryButton extends StatelessWidget {


  const PrimaryButton({super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.
        styleFrom(backgroundColor: MyColors.primaryColor,
          minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),),
        child: title.text.size(20.sp).fontWeight(FontWeight.w700).color(Colors.white).make(),
    );
  }
}
