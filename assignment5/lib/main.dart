import 'package:assignment5/bottomnb.dart';
import 'package:assignment5/cart.dart';
import 'package:assignment5/detail.dart';
import 'package:assignment5/firebase_options.dart';
import 'package:assignment5/home.dart';
import 'package:assignment5/login.dart';
import 'package:assignment5/profile.dart';
import 'package:assignment5/splash.dart';
import 'package:assignment5/walktrough.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
 options: DefaultFirebaseOptions.currentPlatform,
//  currentPlatform,
 );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: 
        Splash(),
        // Home()
      ),
      );
  }
}
