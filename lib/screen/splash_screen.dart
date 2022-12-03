import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:windramayu/widgets/bottom_navbar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splash: Center(
        child: Image(
          image: AssetImage('assets/Logosplah.png'),
        ),
      ),
      backgroundColor: Colors.blueAccent,
      nextScreen: BottomNavbar(),
      splashTransition: SplashTransition.scaleTransition,
      duration: 400,
    ));
  }
}
