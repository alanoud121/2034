// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ordering_app/screen/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class splashanimated extends StatelessWidget {
  const splashanimated({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splashIconSize: 360,
        backgroundColor: Color.fromARGB(255, 224, 225, 242),
        pageTransitionType: PageTransitionType.topToBottom,
        splashTransition: SplashTransition.rotationTransition,
        // splash: ClipRRect(
        //   borderRadius:
        //       BorderRadius.all(Radius.circular(4.0)), //add border radius here
        //   child: Image.asset('assets/2034.png'),
        //   //add image location here
        // ),
        splash: const CircleAvatar(
          radius: 95,
          backgroundImage: AssetImage("assets/b.jpg"),
        ),
        nextScreen: HomeScreen(),

// we can use
        duration: 500,
//5000= 5 Second

//control the duration of the image , we can use
        animationDuration: const Duration(seconds: 1));
//small number : the duration will be speed
//large number : the duratiion will be slow);
  }
}
