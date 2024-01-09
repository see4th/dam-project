
import 'package:new_app/core/utils/suze_config.dart';
import 'package:new_app/features/on%20Boarding/presentation/on_boardin_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 800));
    fadingAnimation = Tween<double>(begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);

    GoToNextView();

  }

  @override
  void dispose() {
    animationController??dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: Text(
            "Travel DZ",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                color: Color.fromRGBO(46, 46, 46, 1),
                fontWeight: FontWeight.bold),
          ),
        ),
        Image.asset("assets/photos/0.png",),
      ]),
    );
  }
  
  void GoToNextView() {
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>OnBoardingView(),transition: Transition.fade);
    });
  }
}
