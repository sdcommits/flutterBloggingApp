import 'package:auto_route/auto_route.dart';
import 'package:bogging_app/core/constant/my_assests.dart';
import 'package:bogging_app/core/constant/my_colors.dart';
import 'package:bogging_app/data/data_sources/remote/api_client.dart';
import 'package:bogging_app/data/data_sources/remote/api_endpoint_urls.dart';
import 'package:bogging_app/presentation/screens/auth/auth.dart';
import 'package:bogging_app/presentation/screens/onboard/onboard_view_model.dart';
import 'package:bogging_app/presentation/screens/onboard/widgets/onboard_first.dart';
import 'package:bogging_app/presentation/screens/onboard/widgets/onboard_second.dart';
import 'package:bogging_app/presentation/screens/onboard/widgets/onboard_third.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../data/repositories/tags_repo.dart';
import '../../router/router_import.gr.dart';

@RoutePage()
class OnBoardPage extends StatefulWidget {
  static const page = OnBoardPageRoute();

  const OnBoardPage({super.key});

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  OnBoardView onBoardView = OnBoardView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(MyAssests.mainLogo,
                  color: MyColors.primaryColor,
                  height: 80.h,
                  width: 139.w,
                ),
                63.h.heightBox,
                PageView(
                  controller: onBoardView.pageController,
                  children: const [
                    OnBoardFirst(),
                    OnBoardSecond(),
                    OnBoardThird(),
                  ],
                ).expand(),
                61.h.heightBox,
                ElevatedButton(
                    onPressed: ()=> AutoRouter.of(context).
                    push( const AuthPageRoute()),
                    // onPressed: ()async{
                    //   final SharedPreferences prefs = await SharedPreferences.getInstance();
                    //   var token = prefs.getString("token");
                    //   Vx.log(token);
                    // },
                    style: ElevatedButton.
                    styleFrom(backgroundColor: MyColors.primaryColor,
                        minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),),
                    child: "Get Started".
                    // child: "Get Request".
                    text.
                    size(20).
                    fontWeight(FontWeight.w700).
                    color(Colors.white).
                    make()
                ),

                  10.h.heightBox,
                // ElevatedButton(
                //   // onPressed: ()=> AutoRouter.of(context).
                //   // push( const AuthPageRoute()),
                //     onPressed: (){
                //       ApiClient().postRequest(
                //           path: ApiEndpointUrls.addTags, body: null
                //       );
                //     },
                //     style: ElevatedButton.
                //     styleFrom(backgroundColor: MyColors.primaryColor,
                //       minimumSize: Size(MediaQuery.of(context).size.width, 44.h),
                //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11.r)),),
                //     child: "Post Request".
                //     text.
                //     size(20).
                //     fontWeight(FontWeight.w700).
                //     color(Colors.white).
                //     make()
                // ),
                const SizedBox(height: 61),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  "Skip"
                      .text
                      .size(20.sp)
                      .fontWeight(FontWeight.w700)
                      .color(MyColors.primaryColor)
                      .make(),

                    SmoothPageIndicator(
                        controller: onBoardView.pageController,  // PageController
                        count:  3,
                        effect:  const WormEffect(
                          activeDotColor: MyColors.primaryColor,
                          dotWidth: 10.0,
                          dotHeight: 10.0,
                        ),  // your preferred effect
                        onDotClicked: (index){

                        }
                    ),
                  "Next"
                      .text
                      .size(20.sp)
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
