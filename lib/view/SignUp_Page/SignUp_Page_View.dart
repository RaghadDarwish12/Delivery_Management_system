import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/Colors/ColorsApp.dart';
import 'package:flutter_project/view/Home_Page/Home_Page_View.dart';
import 'package:flutter_project/view/Login_Page/Login_Page_View.dart';

class SignupPageView extends StatelessWidget {
  const SignupPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        primaryColor,
                        Colors.black87
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                  ),
                ),

              ),

              Positioned(
                left: 0,
                right: 0,
                bottom: 0,

                child: Stack(
                  children: [
                    Container(
                padding: const EdgeInsets.only(
                  top:22,
                ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                          color: Colors.white
                      ),
                      height: 650,
                      width: double.infinity,
                      child :  Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20
                        ),
                        child: Column(
                          //  mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top :45.0,
                                bottom: 22
                              ),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  decoration: TextDecoration.lineThrough,

                                ),
                              ),
                            ),

                            TextField(
                              decoration: InputDecoration(
                                //fillColor: primaryColor,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,

                                  ),
                                  suffixIcon: Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    'First Name',
                                    style: TextStyle(
                                      color: primaryColor.withOpacity(0.7),
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),

                                  focusColor: primaryColor
                              ),
                            ),

                            SizedBox(
                              height: 35,
                            ),

                            TextField(
                              decoration: InputDecoration(
                                //fillColor: primaryColor,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,

                                  ),

                                  label: Text(
                                    'Last Name',
                                    style: TextStyle(
                                      color: primaryColor.withOpacity(0.7),
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),

                                  focusColor: primaryColor
                              ),
                            ),

                            SizedBox(
                              height: 35,
                            ),

                            TextField(
                              decoration: InputDecoration(
                                //fillColor: primaryColor,
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10,

                                  ),
                                  suffixIcon: Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.grey,
                                  ),
                                  label: Text(
                                    'Email',
                                    style: TextStyle(
                                      color: primaryColor.withOpacity(0.7),
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),

                                  focusColor: primaryColor
                              ),
                            ),

                            SizedBox(
                              height: 35,
                            ),

                            TextField(

                              decoration: InputDecoration(

                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                suffixIcon: Icon(
                                  Icons.key,
                                  color: Colors.grey,
                                ),
                                label: Text(
                                  'Password',
                                  style: TextStyle(
                                    color: primaryColor.withOpacity(0.7),
                                    fontWeight: FontWeight.bold,

                                  ),
                                ),

                              ),
                            ),

                            SizedBox(
                              height: 55,
                            ),

                            Center(
                              child: InkWell(
                                onTap: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePageView(),)
                                ),
                                child: Container(
                                  height: 70,
                                  width: 170,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                            primaryColor,
                                            primaryColor.withOpacity(0.9),
                                            Colors.white
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight
                                      ),

                                      borderRadius: BorderRadius.circular(50),

                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10,
                                          offset: Offset(0, 15),
                                          color: primaryColor.withOpacity(0.4),
                                        )
                                      ]
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Sign up",
                                        style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,

                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        CupertinoIcons.arrow_right,
                                        size: 19,
                                        color: Colors.white,

                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 15,
                            ),

                            Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'if you have an account!...',
                                  style: TextStyle(
                                      fontSize: 16
                                  ),
                                ),
                                TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginPageView(),)
                                    )
                                    , child: Text(
                                  'LogIn',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 20,

                                  ),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ),

                  ],
                ),
              ),

            ]
        ),
      ),

    );
  }
}
