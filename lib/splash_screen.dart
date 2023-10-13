import 'dart:async';
import 'package:arfan_sarkar/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
        () => Navigator.push(context, CupertinoPageRoute(builder: (_)=>HomeScreen()))
    );
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: CircleAvatar(),
        ),
      ),
    );
  }
}
