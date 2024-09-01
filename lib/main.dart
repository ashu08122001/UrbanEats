import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:food_delivery1/pages/onboard%20pages/onboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the .env file from the root directory
  await dotenv.load();

  final apiKey = dotenv.env['API_key'];
  final appId = dotenv.env['App_id'];
  final messagingSenderId = dotenv.env['message_id'];
  final projectId = dotenv.env['Project_id'];

  if (apiKey == null || appId == null || messagingSenderId == null || projectId == null) {
    throw Exception('One or more environment variables are missing.');
  }

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
    ),
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
      // Your Scaffold contents here
    );
  }
}
