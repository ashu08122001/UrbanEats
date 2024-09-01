import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery1/admin/addFood.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xff191f22),
              Color(0xff0d0c0b),
            ])),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Home Admin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenWidth * 0.09,
                      color: Colors.white70,
                      fontFamily: "Font1"),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Material(
                  elevation: 5,
                  color: Color(0xff191f22),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>AddFood(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(10)),
                      height: screenHeight * 0.15,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: screenHeight * 0.16,
                              width: screenWidth * 0.22,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/litti_chokha.png"))),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(
                                  "Add Food Items",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: screenWidth * 0.05,
                                      fontWeight: FontWeight.bold),
                                ),

                                Text("Add varities and Dishes.",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: screenWidth*0.033

                                    )),
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
      ),
    );
  }
}
