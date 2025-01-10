import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/constant/Colors/ColorsApp.dart';
import 'package:flutter_project/view/Home_Page/Home_Page_View.dart';
import 'package:flutter_project/view/SignUp_Page/SignUp_Page_View.dart';
import '../../Bloc/auth_Cubit.dart';

class LoginPageView extends StatelessWidget {
  LoginPageView({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();


  bool validateEmail(String email) {
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool validatePassword(String password) {
    final passwordR = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{10,}$');
    return passwordR.hasMatch(password);
  }

  void _login(BuildContext context) {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (!validateEmail(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid email.')),
      );
      return;
    }

    if (!validatePassword(password)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Password must be at least 10 characters long and include both letters and numbers.')),
      );
      return;
    }

    context.read<AuthCubit>().login(email, password).then((success) {
      if (success) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePageView()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid email or password.')),
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => AuthCubit(),

      child: Scaffold(
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
                              AppColor.primaryColor,
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
                              padding: EdgeInsets.only(
                                top: 22
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                  ),
                                  color: Colors.white
                              ),
                              height:620,
                              width: double.infinity,
                              child :  Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20
                                ),
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                  //  mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(68.0),
                                        child: Text(
                                          'LOGin',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40,
                                              decoration: TextDecoration.lineThrough,

                                          ),
                                        ),
                                      ),

                                      TextFormField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                          //fillColor: primaryColor,
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 10,
                                          ),

                                          suffixIcon: Icon(
                                            Icons.account_circle_outlined,
                                            color: Colors.grey,
                                          ),
                                          label:
                                          Text(
                                            'Email',
                                            style: TextStyle(
                                              color: AppColor.primaryColor.withOpacity(0.7),
                                              fontWeight: FontWeight.bold,

                                            ),
                                          ),
                                          focusColor: AppColor.primaryColor
                                        ),
                                        validator: (value) {

                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your email';

                                          } else if (!validateEmail(value)) {
                                            return 'Please enter a valid email';
                                          }

                                          return null;
                                        },

                                      ),


                                      SizedBox(
                                        height: 47,
                                      ),


                                      TextFormField(
                                        controller: _passwordController,
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
                                              color: AppColor.primaryColor.withOpacity(0.7),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),

                                        validator: (value) {

                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your password';

                                          } else if (!validatePassword(value)) {
                                            return 'Password must be at least 10 characters long and include both letters and numbers';
                                          }

                                          return null;
                                        },

                                        obscureText: true,
                                      ),

                                      SizedBox(
                                        height: 75,
                                      ),

                                      Center(
                                        child: InkWell(
                                          onTap:() => _login(context),

                                          /*

                                          {
                                            final email = _emailController.text;
                                            final password = _passwordController.text;
                                            context.read<AuthCubit>().login(email, password);
                                            print('Email: $email, Password: $password');

                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePageView(),)
                                          );
                                          },*/
                                          child: Container(
                                            height: 70,
                                            width: 170,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      AppColor.primaryColor,
                                                      AppColor.primaryColor.withOpacity(0.9),
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
                                                    color: AppColor.primaryColor.withOpacity(0.4),
                                                  )
                                                ]
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Login",
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
                                        height: 19,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center ,
                                        children: [
                                          Text(
                                              'if you don\'t have an account!...'
                                          ),
                                          TextButton(
                                              onPressed: () => Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => SignupPageView(),)
                                              )
                                              , child: Text(
                                            'Sign Up',
                                            style: TextStyle(
                                              color: AppColor.primaryColor,
                                              fontSize: 20,

                                            ),
                                          )),
                                        ],
                                      ),

                                    ],
                                              ),
                                ),
                                          ),

                                  ),


                          ],
                                    ),
                    ),


              ]
              ),
        ),

      ),
    );

  }
}
