import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: Center(
                child:
                // RiveAnimation.asset("images/arrow.riv"),
                RiveAnimation.network("https://cdn.rive.app/animations/vehicles.riv"),
              )
          )),
    );
  }
}
