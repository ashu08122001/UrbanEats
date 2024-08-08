import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:food_delivery1/pages/Login%20Stuff/Singup.dart';
import 'onboardcontent.dart';


class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final ScreenHeight=MediaQuery.of(context).size.height;
    final ScreenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: content.length,
                itemBuilder: (_, i) {
                  return Container(
                    height: ScreenHeight,
                    width: ScreenWidth,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(content[i].image),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(content[i].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Font4",
                                  fontSize: ScreenWidth*0.066,
                                  color: Colors.white)),
                        ),

                        SizedBox(height: ScreenHeight*0.01),
                        Text(content[i].description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: ScreenWidth*0.033,
                              color: Colors.white,
                              fontFamily: "Font2",
                            )),
                        SizedBox(
                          height: ScreenHeight*0.021,
                        ),

                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            List.generate(
                              content.length,(index)=>
                                buildDot(index,context),

                            ),
                          ),
                        ),
                        SizedBox(
                          height: ScreenWidth*0.035,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal:30
                          ),
                          child: GestureDetector(
                            onTap: () {

                              if(currentIndex==content.length-1){
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ));
                              }
                              _controller.nextPage(
                                  duration:Duration(milliseconds: 100),
                                  curve: Curves.bounceIn);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff232b2b).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(25)),
                              width: double.infinity,
                              height: ScreenHeight*0.066,
                              child: Center(
                                  child: Text(
                                      currentIndex==content.length-1?"Start":"Next",
                                      style: TextStyle(
                                          fontSize: ScreenWidth*0.053,
                                          color: Colors.white.withOpacity(0.7)))),
                            ),
                          ),
                        ),
                        SizedBox(height: ScreenHeight*0.013,)

                      ],
                    ),
                  );
                }),
          ),


        ],
      ),
    );

  }
  Container buildDot(int index , BuildContext){
    return Container(
      height: 10,
      width: currentIndex==index?18:7,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Color(0xff232b2b),
          borderRadius: BorderRadius.circular(6)
      ),
    );
  }
}
