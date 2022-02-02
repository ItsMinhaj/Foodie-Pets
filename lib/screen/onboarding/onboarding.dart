import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:foodie_pets/screen/home/home.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  final pages = [
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/onboarding/cares.png',
        title: 'Cares',
        titleColor: Colors.black,
        bodyColor: Colors.black54,
        body: 'Animal deserve your loves and cares ',
        doAnimateImage: true),
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/onboarding/delivery.png',
        title: 'Foods',
        body:
            'We are here to serve you anytime. Stay with us, spreads hapiness',
        titleColor: Colors.black,
        bodyColor: Colors.black54,
        doAnimateImage: true),
    PageModel(
        color: Colors.white,
        imageAssetPath: 'assets/onboarding/treatment.png',
        title: 'Treatments',
        titleColor: Colors.black,
        bodyColor: Colors.black54,
        body:
            'For any emergency dont be panikced, keep calm and use your brain in proper way',
        doAnimateImage: true),
    // PageModel.withChild(
    //     child: Padding(
    //       padding: EdgeInsets.only(bottom: 25.0),
    //       child: Image.asset('assets/02.png', width: 300.0, height: 300.0),
    //     ),
    //     color: const Color(0xFF5886d6),
    //     doAnimateChild: true)
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        key: _globalKey,
        body: OverBoard(
          pages: pages,
          buttonColor: Colors.deepPurple,
          showBullets: true,
          activeBulletColor: Colors.deepPurple,
          inactiveBulletColor: Colors.grey,
          finishCallback: () {
            Get.off(Home());
          },
        ),
      );
}
