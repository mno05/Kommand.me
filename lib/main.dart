import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kommad_me/Data/Services.dart';
import 'package:kommad_me/Vue/MainVue.dart';
import 'package:kommad_me/Vue/ServiceDetails.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kommand.me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
          duration: 3000,
          splash: "img/logo.png",
          splashIconSize: MediaQuery.of(context).size.height*0.8,
          nextScreen: MainVue (),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.black);
  }
}


