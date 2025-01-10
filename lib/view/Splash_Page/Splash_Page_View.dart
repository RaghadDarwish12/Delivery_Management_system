import 'package:flutter/material.dart';
import 'package:flutter_project/constant/Colors/ColorsApp.dart';
import 'package:flutter_project/view/Login_Page/Login_Page_View.dart';
import 'package:get/get.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_project/view/Landing_Pages/Landing_Pages_View.dart';

class SplashPageView extends StatefulWidget {
  const SplashPageView({super.key});

  @override
  State<SplashPageView> createState() => _SplashPageViewState();
}

class _SplashPageViewState extends State<SplashPageView> {
  @override
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(

          colors: [
            Colors.white,
            AppColor.primaryColor,
            Colors.black87
          ],

          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: AnimatedSplashScreen(
          splash: Column(
            children: [
              Expanded(
                child: Image.asset(

                  "Assets/images/splash.png",
                  width: 200,
                  height: 200,),
              ),

              const SizedBox(
                height: 25,
              ),

              const Text(
                'Talabat',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
          splashIconSize: 200,
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.transparent,
          duration: 3000,
          pageTransitionType: PageTransitionType.bottomToTop,
          nextScreen: LoginPageView()
      ),
    );
  }
/*
  initWidget() {
    return Scaffold(
      body: Stack(

        children: [

          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              gradient: LinearGradient(
                colors: [
                  primaryColor,
                  Colors.yellow,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),

          Center(
            child: Container(
              child: Image.asset("Assets/images/Details.png"),

            ),
          )
],      ),
    );
  }*/
}
