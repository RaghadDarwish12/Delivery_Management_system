import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/constant/Colors/ColorsApp.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white ,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.only(
               top: 50,
                left: 10,
                bottom: 35
              ),
              child: Icon(
                weight: 13,
                Icons.grid_view_rounded,
                color: AppColor.primaryColor,
                size: 40,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
              ),
              child: Text(
                "Find the best",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 3,
              ),
              child: Text(
                "coffee to your taste",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          /*
            TextFormField(
          //    controller: ,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              )
            )*/


          ],
        ),
      ),
    );
  }
}
