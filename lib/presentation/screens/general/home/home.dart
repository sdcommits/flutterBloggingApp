import 'package:bogging_app/core/constant/my_assests.dart';
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

                      Column(
                        children: [
                          "Latest Posts".text.size(16).make(),
                        ],
                      )

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
