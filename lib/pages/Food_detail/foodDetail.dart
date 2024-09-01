import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Color(0xff232b2b),
      body: Container(
        height: ScreenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff191f22),
                Color(0xff0d0c0b),
              ]),
        ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Image.asset(
                "assets/images/f_fries.jpg",
                width: ScreenWidth,
                height: ScreenHeight * 0.45,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: ScreenHeight * 0.017,
              ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 5),
              child: Container(
                child:
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Classico",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Font1",
                                  fontSize: ScreenWidth * 0.08)),
                          Text(
                            "French Fries",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: ScreenWidth * 0.07,
                                fontFamily: "Font3"),
                          ),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (a > 1) {
                            --a;
                          }
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            size: ScreenWidth * 0.06,
                            Icons.remove,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenWidth * 0.045,
                      ),
                      Text(a.toString(), style: TextStyle(fontSize: ScreenHeight*0.03,color: Colors.white70)),
                      SizedBox(
                        width: ScreenWidth * 0.045,
                      ),
                      GestureDetector(
                        onTap: () {
                          ++a;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.add,
                            size: ScreenWidth * 0.06,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ),

                SizedBox(
                  height: ScreenHeight * 0.012,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    child: Text(
                      "Prepared by cutting potatoes into even strips, drying them, and frying them, usually in a deep fryer. Pre-cut, blanched, and frozen russet potatoes are widely used, and sometimes baked in a regular or convection oven; air fryers are small convection ovens marketed for frying potatoes.",
                      style: TextStyle(
                          color: Colors.white70, fontSize: ScreenWidth * 0.04),

                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          "Delivery Time",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Font1",
                              fontSize: ScreenWidth * 0.06),
                        ),
                        SizedBox(
                          width: ScreenWidth * 0.045,
                        ),
                        Icon(
                          Icons.alarm,
                          color: Colors.white70,
                          size: ScreenWidth * 0.05,
                        ),
                        Text(
                          "30 Minutes",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Font1",
                              fontSize: ScreenWidth * 0.06),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height:ScreenHeight*0.03,
                                child: Text("Total Price",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: ScreenWidth * 0.05,
                                        fontFamily: "Font3")),
                              ),
                              Container(
                                height: ScreenHeight*0.03,
                                child: Text(
                                  "Rs. 200/-",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: ScreenWidth * 0.05),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: ScreenHeight * 0.06,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(10)),
                          width: ScreenWidth * 0.45,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 0.1,
                              ),
                              Text("Add To Cart",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontFamily: "Font1",
                                      fontSize: ScreenWidth * 0.05)),

                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Icon(
                                    size: ScreenWidth * 0.05,
                                    color: Colors.white70,
                                    Icons.shopping_cart),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),


            ],
          ),
        ),


    );
  }
}
