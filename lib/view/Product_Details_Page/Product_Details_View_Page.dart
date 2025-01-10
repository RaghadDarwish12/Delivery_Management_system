import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/constant/Colors/ColorsApp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailsViewPage extends StatelessWidget {

  final String category;
  final String image;
  final String type;
  final String price;
  final String rate;
  final String description;
  bool favorate = false;
   //final String name;

  ProductDetailsViewPage(
  {
    required this.image,
    required this.category,
    required this.type,
    required this.price,
    required this.rate,
    required this.description
}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 30,
          ),
          child: Center(
            child: Container(
              width: double.infinity,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 440,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              clipBehavior: Clip.antiAlias,

                              child: Image.asset(
                                image,
                                height: 200,
                                  width: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(23.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(30),

                                    ),


                                    child: Icon(
                                        Icons.arrow_back_ios,
                                        size: 30,
                                        color: Colors.black,


                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: SizedBox(
                                    width: 10,
                                  ),
                                ),

                                InkWell(
                                  onTap: () {
                                    favorate == !favorate;
                                  },

                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(30),

                                    ),
                                    child: Icon(
                                          favorate? Icons.favorite_rounded : Icons.favorite_border,
                                      color: Colors.red,
                                      ),
                                  ),
                                ),

                              ],
                            ),
                          ),


                        ],
                      ),

                      Container(
                        height: 140,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black87.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(60)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 18
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        category,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        type,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),

                                  Expanded(
                                    child: SizedBox(
                                      width: 10,
                                    ),
                                  ),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.coffee_outlined,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Coffee',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.droplet,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        'Chocolate',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Expanded(
                                child: SizedBox(
                                  height: 5,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${rate}   (6,098)',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(
                                      width: 15,
                                    ),
                                  ),
                                  Text(
                                    'Medium Roasted',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
