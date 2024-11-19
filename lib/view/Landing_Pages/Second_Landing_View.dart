import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Second_Landing_View extends StatelessWidget {
  const Second_Landing_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9C3),
      body:Container(
        padding: EdgeInsets.symmetric(
            vertical: 80
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 260,
                width: 260,
                child: Image.asset(
                    "Assets/images/landing2.png"
                ),
              ),
              SizedBox(
                height: 94,
              ),
              Text(
                "Stay Energized",
                style: TextStyle(
                    color: Color(0xFF2F1E04),
                    fontSize: 29,
                    fontWeight: FontWeight.w900
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                textAlign: TextAlign.center,
                "Discover your perfect brew to keep you sharp \n"
                    "and energized. Explore our menu with a variety \n"
                    "of coffee options.",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 18,
                ),
              ),
              
            ],
          ),
        ),
      ) ,
    );
  }
}
