import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_delivery1/pages/Home/order.dart';
import 'package:food_delivery1/pages/Home/profile.dart';
import 'package:food_delivery1/pages/Home/wallet.dart';

import '../Home/Home.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIdex=0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;

  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState(){
    homepage=Home();
    order=Order();
    wallet=Wallet();
    profile=Profile();
    pages=[homepage,wallet,profile,order];
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xff0d0c0b),
        color: Colors.black54,
        height: 65,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIdex=index;

          });

        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white70,
          ),

          Icon(
              color: Colors.white70,
              Icons.wallet_outlined
          ),

          Icon(
              color: Colors.white70,
              Icons.shopping_cart
          ),

          Icon(
              color: Colors.white70,
              Icons.person_outline
          ),


        ],
      ),
      body: pages[currentTabIdex],
    );
  }
}
