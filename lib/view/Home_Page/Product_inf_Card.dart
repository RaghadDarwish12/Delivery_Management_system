import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/view/Product_Details_Page/Product_Details_View_Page.dart';
import 'package:flutter_project/constant/Colors/ColorsApp.dart';

class ProductInfCard extends StatelessWidget{

  final String image;
  final String name;
  final String type;
  final String price;
  final String rate;

  ProductInfCard({
    required this.image,
    required this.name,
    required this.type,
    required this.price,
    required this.rate,
});

  @override
  Widget build(BuildContext context) {
    return Card(
       surfaceTintColor: Colors.white,
        color: Colors.white,
        shadowColor: Colors.grey,
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            image ,
                            height: 103,
                            width: 132,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Container(
                          height: 27,
                          width: 63,
                          decoration: BoxDecoration(
                            color: Colors.black87.withOpacity(0.8),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topRight: Radius.circular(20)
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  rate,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      name ,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        color: Colors.black87 ,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(
                      height: 2,
                    ),

                    Text(
                      type ,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        color: Colors.black38
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    Expanded(
                      child: Text(
                       price ,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black87
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 60,
              width: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: AppColor.primaryColor,
              ),
              child: Icon(
                Icons.add,
                size: 35,
                color: Colors.white,
              ),
            )
          ],
        ),

    );
  }
}