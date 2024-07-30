import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              Image.asset(MyAssests.assetsImageNetFlix).cornerRadius(20),
              20.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                "Latest Posts".text.size(16).make(),
                "See All".text.size(16).make(),
              ],
              ),
15.h.heightBox,
              ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index)=> SizedBox(height: 15,),
                itemBuilder: (context,index){
                  return Row(
                    children: [Image.asset(MyAssests.assetsImageNetFlix,
                      height: 100,
                    width: 160,
                    fit: BoxFit.cover )
                        .cornerRadius(20),
                    10.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Netflix Will Charge Money for Password Sharing"
                              .text
                              .size(16)
                          .maxLines(2)
                          .bold
                              .make(),
                          6.h.heightBox,
                          Row(
                            children: [
                              const Icon(FeatherIcons.clock, color: Colors.grey, size:  16,),
                              " 6 Months ago"
                                  .text.size(16).color(Colors.grey).size(16).make(),

                            ],
                          ),
                          6.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // const Icon(FeatherIcons.eye),
                              " 59 views"
                                  .text.size(16).make(),
                              const Icon(FeatherIcons.bookmark, size: 18)

                            ],
                          ),
                          6.h.heightBox,
                        ],
                      ).expand()

                    ],
                  );
                },

              )

            ],


          ),
        ),
      ),
    );
  }
}
