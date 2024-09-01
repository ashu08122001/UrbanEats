import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery1/pages/Food_detail/foodDetail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, burger = false, pizza = false, noodles = false, momos=false;
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff191f22),
                Color(0xff0d0c0b),
              ]),
        ),
        padding: const EdgeInsets.only(left: 10),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Container(
                      height: ScreenHeight * 0.07,
                      width: ScreenWidth * 0.14,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff191f22),
                                Color(0xff0d0c0b),
                              ]),
                          borderRadius: BorderRadius.circular(25)),
                      child: Container(
                        child: Center(
                          child: Icon(
                            size: ScreenWidth * 0.05,
                            CupertinoIcons.line_horizontal_3_decrease,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Container(
                          height: ScreenHeight*0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white70.withOpacity(0.03)
                          ),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white70),
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.location_solid
                              ),
                              hintText: "Enter Your Location",
                              hintStyle: TextStyle(color: Colors.white70.withOpacity(0.5),fontSize: ScreenWidth*0.049),
                              border: InputBorder.none
                            ),
                          )
                        ),
                    ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(right: 10,left: 7),
                    child: Container(
                      height: ScreenHeight * 0.07,
                      width: ScreenWidth * 0.14,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff191f22),
                                Color(0xff0d0c0b),
                              ]),
                          borderRadius: BorderRadius.circular(25)),
                      child: Container(
                        child: Center(
                          child: Icon(
                            size: ScreenWidth * 0.05,
                            Icons.notifications,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: ScreenHeight * 0.02,
              ),
              Text("Delicious Food",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Font1",
                      fontSize: ScreenWidth * 0.08)),
              Text(
                "Discover and get Great Food",
                style: TextStyle(
                    color: Colors.white70, fontSize: ScreenWidth * 0.033),
              ),
              SizedBox(
                height: ScreenHeight * 0.02,
              ),
              Container(margin: EdgeInsets.only(right: 10), child: showItem()),
              SizedBox(
                height: ScreenHeight * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetail(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 5,
                          color: Color(0xff232b2b),
                          child: Container(
                            width: ScreenWidth * 0.43,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff191f22),
                                      Color(0xff0d0c0b),
                                    ]),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                    height: ScreenHeight * 0.19,
                                    width: ScreenWidth * 0.4,
                                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/f_fries.jpg"),fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                  )
                                ),
                                SizedBox(
                                  height: ScreenHeight * 0.01,
                                ),
                                Text(
                                  "Classico Fries",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.05,
                                      fontFamily: "Font3"),
                                ),
                                Text(
                                  "Crispy and Crunchy",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.027),
                                ),
                                SizedBox(
                                  height: ScreenWidth * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Row(
                                    children: [
                                      Text("Rs. 200/-",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: ScreenWidth * 0.03)),
                                      Spacer(),
                                      Container(
                                        height: ScreenHeight * 0.038,
                                        width: ScreenWidth * 0.12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xffFFEA61),
                                                  Color(0xffFFD400),
                                                ])),
                                        child: Center(
                                          child: Text("Add +",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: ScreenWidth * 0.028,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenWidth * 0.001,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetail(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 5,
                          color: Color(0xff232b2b),
                          child: Container(
                            width: ScreenWidth * 0.43,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff191f22),
                                      Color(0xff0d0c0b),
                                    ]),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                    height: ScreenHeight * 0.19,
                                    width: ScreenWidth * 0.4,
                                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/litti_chokha.png"),fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                ),
                                SizedBox(
                                  height: ScreenHeight * 0.01,
                                ),
                                Text(
                                  "Litti Chokha",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.05,
                                      fontFamily: "Font3"),
                                ),
                                Text(
                                  "Dish from Bihar",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.027),
                                ),
                                SizedBox(
                                  height: ScreenWidth * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Row(
                                    children: [
                                      Text("Rs. 100/-",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: ScreenWidth * 0.03)),
                                      Spacer(),
                                      Container(
                                        height: ScreenHeight * 0.038,
                                        width: ScreenWidth * 0.12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xffFFEA61),
                                                  Color(0xffFFD400),
                                                ])),
                                        child: Center(
                                          child: Text("Add +",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: ScreenWidth * 0.028,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: ScreenWidth * 0.0005,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FoodDetail(),
                            ));
                      },
                      child: Container(
                        width: ScreenWidth * 0.43,
                        margin: EdgeInsets.all(4),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 5,
                          color: Color(0xff232b2b),
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff191f22),
                                      Color(0xff0d0c0b),
                                    ]),
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                    height: ScreenHeight * 0.19,
                                    width: ScreenWidth * 0.4,
                                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/veg_roll.png"),fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                ),
                                SizedBox(
                                  height: ScreenHeight * 0.01,
                                ),
                                Text(
                                  "Veg Roll",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.05,
                                      fontFamily: "Font3"),
                                ),
                                Text(
                                  "The Taste of Italy",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.027),
                                ),
                                SizedBox(
                                  height: ScreenWidth * 0.03,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Row(
                                    children: [
                                      Text("Rs. 200/-",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontWeight: FontWeight.bold,
                                              fontSize: ScreenWidth * 0.03)),
                                      Spacer(),
                                      Container(
                                        height: ScreenHeight * 0.038,
                                        width: ScreenWidth * 0.12,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            gradient: const LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xffFFEA61),
                                                  Color(0xffFFD400),
                                                ])),
                                        child: Center(
                                          child: Text("Add +",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: ScreenWidth * 0.028,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenHeight * 0.015,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: ScreenWidth * 0.01, right: ScreenWidth * 0.01),
                child: Material(
                  color: Color(0xff232b2b),
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: ScreenHeight*0.14,
                      padding: EdgeInsets.only(
                          right: ScreenWidth * 0.01, left: ScreenWidth * 0.01),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff191f22),
                                Color(0xff0d0c0b),
                              ]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: ScreenHeight * 0.12,
                              width: ScreenWidth * 0.25,
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/pizza_home.jpg"),fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: ScreenHeight*0.02,
                              ),
                              Text("Paneer Pizza",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: ScreenWidth * 0.05,
                                      fontFamily: "Font3")),
                              SizedBox(
                                height: ScreenHeight * 0.01,
                              ),
                              Text(
                                "Melted cheese bliss in every bite",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: ScreenWidth * 0.028),
                              ),
                              SizedBox(
                                height: ScreenHeight * 0.01,
                              ),
                              Text(
                                "Rs. 200/- ",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenWidth * 0.028),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: ScreenWidth * 0.06,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFFEA61),
                                        Color(0xffFFD400)
                                      ]),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: ScreenWidth * 0.06,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),

],
    )
      )
    )

    );
  }

  Widget showItem() {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            pizza = true;
            icecream = false;
            noodles = false;
            burger = false;
            momos=false;
            setState(() {});
          },
          child: Material(
            color: Color(0xff232b2b),
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Container(
                  width: ScreenWidth * 0.16,
                  height: ScreenHeight * 0.065,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: pizza ? Colors.black26 : Color(0xff232b2b)),
                  padding: EdgeInsets.all(7),
                  // color: Color(0xff232b2b),

                  child: Image.asset(
                    "assets/images/smallpizza.png",
                    height: ScreenHeight * 0.045,
                    width: ScreenWidth * 0.08,

                  ),
                ),
            Text(
              "Pizza",
              style: TextStyle(
                  color: Colors.white70, fontSize: ScreenWidth * 0.025)),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            icecream = false;
            noodles = false;
            burger = true;
            momos=false;
            setState(() {});
          },
          child: Material(
            color: Color(0xff232b2b),
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Container(
                  width: ScreenWidth * 0.16,
                  height: ScreenHeight * 0.065,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: burger ? Colors.black26 : Color(0xff232b2b)),
                  padding: EdgeInsets.all(7),
                  // color: Color(0xff232b2b),

                  child: Image.asset(
                    "assets/images/smallBurger.png",
                    width: ScreenWidth * 0.16,
                    height: ScreenHeight * 0.065,

                  ),
                ),
                Text(
                  "Burger",
                  style: TextStyle(
                      color: Colors.white70, fontSize: ScreenWidth * 0.025),
                )
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            icecream = false;
            noodles = true;
            burger = false;
            momos=false;
            setState(() {});
          },
          child: Material(
            color: Color(0xff232b2b),
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Container(
                  width: ScreenWidth * 0.16,
                  height: ScreenHeight * 0.065,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: noodles ? Colors.black26 : Color(0xff232b2b)),
                  padding: EdgeInsets.all(7),
                  // color: Color(0xff232b2b),

                  child: Image.asset(
                    "assets/images/smallNoodles.png",
                    height: ScreenHeight * 0.045,
                    width: ScreenWidth * 0.08,

                  ),
                ),
                Text(
                    "Noodles",
                    style: TextStyle(
                        color: Colors.white70, fontSize: ScreenWidth * 0.025)),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            icecream = true;
            noodles = false;
            burger = false;
            momos=false;
            setState(() {});
          },
          child: Material(
            color: Color(0xff232b2b),
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Container(
                  width: ScreenWidth * 0.16,
                  height: ScreenHeight * 0.065,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: icecream ? Colors.black26 : Color(0xff232b2b)),
                  padding: EdgeInsets.all(7),
                  // color: Color(0xff232b2b),

                  child: Image.asset(
                    "assets/images/Small_ice.png",
                    height: ScreenHeight * 0.058,
                    width: ScreenWidth * 0.1,

                  ),
                ),
                Text(
                    "Ice-Cream",
                    style: TextStyle(
                        color: Colors.white70, fontSize: ScreenWidth * 0.025)),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            pizza = false;
            icecream = false;
            noodles = false;
            burger = false;
            momos=true;
            setState(() {});
          },
          child: Material(
            color: Color(0xff232b2b),
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                Container(
                  width: ScreenWidth * 0.16,
                  height: ScreenHeight * 0.065,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: momos ? Colors.black26 : Color(0xff232b2b)),
                  padding: EdgeInsets.all(7),
                  // color: Color(0xff232b2b),

                  child: Image.asset(
                    "assets/images/smallMomos.png",
                    height: ScreenHeight * 0.058,
                    width: ScreenWidth * 0.1,
                  
                  ),
                ),
                Text(
                    "Momos",
                    style: TextStyle(
                        color: Colors.white70, fontSize: ScreenWidth * 0.025)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
