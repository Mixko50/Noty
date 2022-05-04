// import 'dart:async' as async;

import 'package:flutter/material.dart';
import 'package:noty_client/constants/theme.dart';
import 'package:noty_client/screens/start/welcome.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _SplashScreenState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: 'assets/images/logo.png',
        nextScreen: const WelcomeScreen(),
        splashIconSize: 150,
        pageTransitionType: PageTransitionType.fade,
        duration: 1500,
        backgroundColor: ThemeConstant.colorPrimaryDark,
      ),
    );
  }
}
