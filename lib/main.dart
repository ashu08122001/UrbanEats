
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:food_delivery1/pages/onboard%20pages/onboard.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:FirebaseOptions(
          apiKey: "AIzaSyDjyfK5A17RKKhCWstRo-Zn2noFST6oTw8",
          appId: "1:695344691407:android:ea9c31ba67ab0233b79fba",
          messagingSenderId: "695344691407",
          projectId: "urbaneats-3a570"
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnBoard(),
    );
  }
}




class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );

  }
}
