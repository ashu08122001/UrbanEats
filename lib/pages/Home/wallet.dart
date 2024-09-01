import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    final ScreenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: ScreenWidth,
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 7),
                  child: Container(
                    width: ScreenWidth,
                    child: Text("Wallet",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: ScreenWidth * 0.08,
                            fontFamily: "Font1")),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Text(
                    "Add Cash to order Fast !",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: ScreenWidth * 0.033,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.02,
                ),
                Container(
                  height: ScreenHeight * 0.12,
                  decoration: BoxDecoration(
                      color: Colors.white70.withOpacity(0.02),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          child: Image.asset(
                            "assets/images/wallet.png",
                            height: ScreenHeight * 0.15,
                            width: ScreenWidth * 0.15,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ScreenWidth * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: ScreenHeight * 0.025,
                          ),
                          Text(
                            "Your Wallet",
                            style: TextStyle(
                                fontSize: ScreenWidth * 0.046,
                                color: Colors.white70),
                          ),
                          SizedBox(
                            height: ScreenHeight * 0.01,
                          ),
                          Text(
                            "Rs. 1000",
                            style: TextStyle(
                                color: Colors.white70.withOpacity(0.8),
                                fontSize: ScreenWidth * 0.03,fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Container(
                    child: Text(
                      "Add Money",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: ScreenWidth * 0.045,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: ScreenHeight * 0.06,
                      width: ScreenWidth * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Rs. 500",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: ScreenWidth * 0.03),
                        ),
                      ),
                    ),
                    Container(
                      height: ScreenHeight * 0.06,
                      width: ScreenWidth * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Rs. 1000",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: ScreenWidth * 0.03),
                        ),
                      ),
                    ),
                    Container(
                      height: ScreenHeight * 0.06,
                      width: ScreenWidth * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Rs. 2000",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: ScreenWidth * 0.03),
                        ),
                      ),
                    ),
                    Container(
                      height: ScreenHeight * 0.06,
                      width: ScreenWidth * 0.2,
                      decoration: BoxDecoration(
                          color: Colors.white70.withOpacity(0.02),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Rs. 3000",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: ScreenWidth * 0.03),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenHeight * 0.04,
                ),
                Container(
                  height: ScreenHeight * 0.06,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffFFEA61).withOpacity(0.8),
                            Color(0xffFFD400).withOpacity(0.8)
                          ]),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                      child: Text(
                    "Add Money",
                    style: TextStyle(
                        color: Colors.black87, fontSize: ScreenWidth * 0.04,
                        fontWeight: FontWeight.bold),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
