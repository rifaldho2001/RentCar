import 'package:flutter/material.dart';
import 'package:rentcar/Login/login.dart';
import 'package:rentcar/screens/cars_overview.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import '../mobil/mobil.dart';

class Splash extends StatelessWidget {
  static String routeName = "/splash";
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: 'assets/splash/512.png',
        nextScreen: Login(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 128,
        duration: 1500,);
  }
}
