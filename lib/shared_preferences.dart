import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int counter = 0;

  getCounterValue()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      counter = sharedPreferences.getInt("counter")??0;
    });
  }

  setCounterValue()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      counter++;
      sharedPreferences.setInt("counter", counter);
    });
  }

  @override
  void initState() {
    getCounterValue();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body:  Center(
            child: Text(counter.toString(), style: TextStyle(fontSize: 23),),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: setCounterValue,
          ),
        ),
      ),
    );
  }
}
