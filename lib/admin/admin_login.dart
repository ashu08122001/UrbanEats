import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:food_delivery1/admin/home_admin.dart';

import 'package:food_delivery1/pages/Home/bottomNav.dart';
import 'package:food_delivery1/pages/Login%20Stuff/Singup.dart';
import 'package:food_delivery1/pages/Login%20Stuff/forgetpassword.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _LogInState();
}

class _LogInState extends State<AdminLogin> {
  String email = "",
      password = "";

  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();

  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Color(0xff131618),
      body: Center(
        child: Material(
          color: const Color(0xff131618),
          borderRadius: BorderRadius.circular(15),
          elevation: 5,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff191f22),
                  Color(0xff0d0c0b),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            height: screenHeight * 0.62,
            width: screenWidth * 0.9,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: _formkey,
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Let's Start with \n Admin Pannel !",
                        style: TextStyle(color: Colors.white70,
                            fontSize: screenWidth * 0.08),),
                      SizedBox(height: screenHeight * 0.04),

                      SizedBox(height: screenHeight * 0.02),
                      Container(
                        height: screenHeight * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white70, width: 1)
                        ),
                        child: TextFormField(
                          style: const TextStyle(color: Colors.white70),
                          controller: emailcontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter E-mail";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Username",
                              hintStyle: TextStyle(
                                  fontFamily: "Font4",
                                  fontSize: screenWidth * 0.05,
                                  color: Colors.white70.withOpacity(0.7)),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white70,
                              ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white70, width: 1)
                        ),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white70),
                          controller: passwordcontroller,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: "Font4",
                                fontSize: 18,
                                color: Colors.white70.withOpacity(0.7)),
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.031),
                      GestureDetector(
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              email = emailcontroller.text;
                              password = passwordcontroller.text;
                            });
                          }
                        },
                        child: Container(
                          height: screenHeight * 0.06,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                fontFamily: "Font4",
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth * 0.04,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void LoginAdmin() {
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot) {
      snapshot.docs.forEach((result) {
        if (result.data()['id'] != emailcontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("Your id is not correct",
                style: TextStyle(fontSize: 18,),
              ))));
        } else
        if (result.data() ['password'] != passwordcontroller.text.trim()) {
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            backgroundColor: Colors.redAccent,
            content: Text("Your password is not correct",
              style: TextStyle(fontSize: 18),),
          )));
        } else {
          Route route = MaterialPageRoute(builder: (context) => HomeAdmin());
          Navigator.pushReplacement(context, route);
        }
      });
    });
  }
}

