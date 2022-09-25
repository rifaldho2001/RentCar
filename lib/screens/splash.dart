import 'package:flutter/material.dart';
import 'package:rentcar/screens/cars_overview.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: 'assets/splash/512.png',
        nextScreen: CarsOverviewScreen(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 128,
        duration: 1500,);
  }
}
