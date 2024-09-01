import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:food_delivery1/pages/Home/Home.dart';
import 'package:food_delivery1/pages/Home/bottomNav.dart';
import 'package:food_delivery1/pages/Login%20Stuff/Singup.dart';
import 'package:food_delivery1/pages/Login%20Stuff/forgetpassword.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email="",password="";

  TextEditingController emailcontroller=new TextEditingController();
  TextEditingController passwordcontroller=new TextEditingController();

  final _formkey=GlobalKey<FormState> ();

  userLogin() async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const BottomNav(),
    ));
    }on FirebaseAuthException catch(e){
      if(e.code=="user-not-found"){
        ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("No user Found out for the email",style: TextStyle(fontSize: 18),),
        )));
      } else if(e.code=="wrong-password"){
        ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text("Wrong Password",style: TextStyle(fontSize: 18),),
        )));
      }
    }
  }
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
            height: screenHeight * 0.74,
            width: screenWidth * 0.9,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Form(
                    key: _formkey,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/UrbanEats_smallPng.png",
                          height: screenHeight * 0.25,
                          width: screenWidth * 0.5,
                        ),
                        SizedBox(height: screenHeight * 0.02),

                        SizedBox(height: screenHeight * 0.02),
                        TextFormField(
                          style: const TextStyle(color: Colors.white70),
                          controller: emailcontroller,
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter E-mail";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                  fontFamily: "Font4",
                                  fontSize: 18,
                                  color: Colors.white70),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white70,
                              )),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        TextFormField(
                          style: TextStyle(color: Colors.white70),
                          controller: passwordcontroller,
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter Password";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontFamily: "Font4",
                                  fontSize: 18,
                                  color: Colors.white70),
                              prefixIcon: Icon(
                                Icons.password,
                                color: Colors.white70,
                              )),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword(),
                            ));
                          },
                          child: Container(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forget Password ?",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: screenWidth * 0.033,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.031),
                        GestureDetector(
                          onTap: (){
                           if(_formkey.currentState!.validate()){
                             setState(() {
                               email=emailcontroller.text;
                               password=passwordcontroller.text;
                             });
                           }
                           userLogin();
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
                        SizedBox(height: screenHeight * 0.03),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp()),
                            );
                          },
                          child: Text(
                            "Don't have an Account? Signup",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: screenWidth * 0.030,
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
}
