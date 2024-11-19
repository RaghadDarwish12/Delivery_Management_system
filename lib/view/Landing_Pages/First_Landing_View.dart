import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';



class First_Landing_View extends StatelessWidget {
  const First_Landing_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9C3),
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: 80
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                    "Assets/images/landing1.png"
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Stay Focused",
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
                "Get the cup filled of your choice to stay \n"
                    "focused and awake. Diffrent type of coffee \n"
                    "menu , hot lottee cappucino",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 18,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
