import 'package:new_app/features/splash/ui/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class Splash_View extends StatelessWidget {
  const Splash_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SplashBody(),
    );
  }
}