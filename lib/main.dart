import 'package:flutter/material.dart';
import 'package:flutter_project/view/Home_Page/Home_Page_View.dart';
import 'package:flutter_project/view/Landing_Pages/First_Landing_View.dart';
import 'package:flutter_project/view/Landing_Pages/Second_Landing_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/view/Landing_Pages/Landing_Pages_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePageView(),
      title: 'Coffe Shop',

    );
  }
}


