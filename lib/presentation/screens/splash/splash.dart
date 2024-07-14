part of 'splash_import.dart';

@RoutePage()
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    moveToOnBoardPage();
    super.initState();
  }
  moveToOnBoardPage() async{
    await Future.delayed(const Duration(seconds: 4),(){
      AutoRouter.of(context).push(const OnBoardPageRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(child:
      FadedScaleAnimation(
        child: Image.asset(
          MyAssests.mainLogo,
        height: 100.h,
        width: 200.w,),
      )),
    );
  }
}
