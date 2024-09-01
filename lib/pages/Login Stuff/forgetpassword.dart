import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String email = "";

  Future<void> resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password Reset Email has been Sent!", style: TextStyle(fontSize: 18)),
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("No user Found for that Email", style: TextStyle(fontSize: 18)),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: ScreenHeight,
        width: ScreenWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff191f22),
              Color(0xff0d0c0b),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Password Recovery",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: ScreenWidth * 0.11,
                      color: Colors.white70,
                      fontFamily: "Font1",
                    ),
                  ),
                  SizedBox(height: ScreenHeight * 0.02),
                  Text(
                    "Enter Your Email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: ScreenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: ScreenHeight * 0.02),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white70, width: 1.0),
                          ),
                          child: TextFormField(
                            style: TextStyle(color: Colors.white70),
                            controller: emailcontroller,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter Your Email";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.white70,
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                color: Colors.white70,
                                fontSize: ScreenWidth * 0.05,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenHeight * 0.03),
                        GestureDetector(
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
                              setState(() {
                                email = emailcontroller.text;
                              });
                              resetPassword();
                            }
                          },
                          child: Container(
                            height: ScreenHeight * 0.06,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white70.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Send Email",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: ScreenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenHeight * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't Have an Account? ",
                              style: TextStyle(
                                color: Colors.white70.withOpacity(0.6),
                                fontSize: ScreenWidth * 0.04,
                              ),
                            ),
                            Text(
                              "Create",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: ScreenWidth * 0.04,
                              ),
                            ),
                          ],
                        ),
                      ],
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
