import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:uikit/helpers/constans.dart';

class SplasScreenCommerce extends StatelessWidget {
  const SplasScreenCommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Assets.logo,
      nextScreen: const _buildSplashScreen(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 1000,
      animationDuration: const Duration(
        milliseconds: 1500,
      ),
    );
  }
}

class _buildSplashScreen extends StatefulWidget {
  const _buildSplashScreen({Key? key}) : super(key: key);

  @override
  __buildSplashScreenState createState() => __buildSplashScreenState();
}

class __buildSplashScreenState extends State<_buildSplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          milliseconds: 1500,
        ), () {
      Get.offAllNamed<dynamic>(HerryCommerceRoutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Herry Dev',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
