
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_delivery1/pages/Home/bottomNav.dart';
import 'package:food_delivery1/pages/Login%20Stuff/Login.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name="",password="",email="";

  TextEditingController namecontroller= new TextEditingController();
  TextEditingController emailcontroller=new TextEditingController();
  TextEditingController passwordcontroller=new TextEditingController();
  
  final _formkey=GlobalKey<FormState> ();

  registration() async {
    if(password!=null && emailcontroller.text!=""&&namecontroller.text!=""){
      try{
        UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
          content: Text("Registered Successfully",style: TextStyle(fontSize: 20),),
        )));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNav(),
        ));
      } on FirebaseAuthException catch(e){
        if(e.code== "weak-password"){
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            backgroundColor: Colors.white10,
            content: Text("Password is too Weak.",style: TextStyle(fontSize: 18),),
          )));
        } else if(e.code== "email-already-in-use"){
          ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            backgroundColor: Colors.white10,
            content: Text("Account already exists",style: TextStyle(fontSize: 18),),
          )));
        }
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
          color: Color(0xff131618),
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
            height: screenHeight * 0.82,
            width: screenWidth * 0.9,
            child: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.05),
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
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
                        TextFormField(
                          style: TextStyle(color: Colors.white70),
                          controller: namecontroller,
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter the Name";
                            }
                            return null;
                          },

                          decoration: const InputDecoration(


                              hintText: "Name",
                              hintStyle: TextStyle(
                                  fontFamily: "Font4",
                                  fontSize: 18,
                                  color: Colors.white70),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white70,
                              )),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        TextFormField(
                            style: TextStyle(color: Colors.white70),
                          controller: emailcontroller,
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter the Email";
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
                          obscureText: true,
                          style: TextStyle(color: Colors.white70),
                          controller: passwordcontroller,
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return "Please Enter the Password";
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
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Forget Password ?",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: screenWidth * 0.033,
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.031),

                           GestureDetector(
                             onTap: (){
                               if(_formkey.currentState!.validate()){
                                 setState(() {
                                   name=namecontroller.text;
                                   email=emailcontroller.text;
                                   password=passwordcontroller.text;
                                 });
                               }
                               registration();

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
                                  "SIGN UP",
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
                              MaterialPageRoute(builder: (context) => LogIn()),
                            );
                          },
                          child: Text(
                            "Already have an Account? Login",
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

