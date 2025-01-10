import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/view/Landing_Pages/First_Landing_View.dart';
import 'package:flutter_project/view/Landing_Pages/Second_Landing_View.dart';
import 'package:flutter_project/view/Home_Page/Home_Page_View.dart';
import 'package:flutter_project/constant/Colors/ColorsApp.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Landing_Pages_View extends StatelessWidget {
    Landing_Pages_View({super.key});

  final _controller = PageController();
  int _num_page = 0;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
           /* onPageChanged: (index) {
              if (index == 1){
                Future.value(
                () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePageView(),
                      ),
                  );
                },);
              }},*/
              onPageChanged:
              (index) {
                _num_page == index;
              }  ,

            children: [
              First_Landing_View(),
              Second_Landing_View(),
            ],
          ),
          Positioned(
            bottom: 150,
            left: 0,
              right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 2,
                effect: WormEffect(
                  dotHeight: 12 ,
                  dotWidth: 12,
                  dotColor: Colors.white,
                  activeDotColor: AppColor.primaryColor
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
                child: InkWell(
                  onTap: ()  {
                    if (_num_page == 0) {
                      _controller.animateToPage(1, duration: Duration(milliseconds: 400), curve: Curves.ease);
                      _num_page == 1;
                    } else if (_num_page == 1) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageView(),)
                      );
                    }
                    /*  */


                    },
                  child: Container(
                    height: 70,
                    width: 170,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
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
                          "Dive In",
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
          ),
        ],
      ),
    );
  }
}



