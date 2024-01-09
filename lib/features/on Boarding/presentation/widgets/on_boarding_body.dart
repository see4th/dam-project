import 'package:get/get.dart';
import 'package:new_app/core/utils/constants.dart';
import 'package:new_app/core/utils/suze_config.dart';
import 'package:new_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:new_app/features/Auth/presentation/home_page_view.dart';
import 'package:new_app/features/on%20Boarding/presentation/widgets/custom_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboadringViewBody extends StatefulWidget {
  const OnboadringViewBody({
    super.key,
  });

  @override
  State<OnboadringViewBody> createState() => _OnboadringViewBodyState();
}

class _OnboadringViewBodyState extends State<OnboadringViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //pageController!.hasClients? pageController?.page :0
    return Stack(
      children: [
        CustomePageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 22,
          left: SizeConfig.defaultSize! * 15,
          child: SmoothPageIndicator(
              controller: pageController!,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: MainColor,
                dotColor: Color.fromARGB(182, 216, 216, 216),
              )),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text(
              "Skip",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: const Color(0xff898989)),
              textAlign: TextAlign.left,
              
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomButton(
              onTap: (){
                if (pageController!.page! <2) {
                  pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInSine);
                  
                }else {
                  Get.to(()=> HomePageView(),transition:Transition.fade, duration :Duration(milliseconds: 500 ));
                }
              },
              textButton: pageController!.hasClients
                  ? (pageController?.page == 2 ? "Get Started" : "Next")
                  : "Next",
            )),
      ],
    );
  }
}
