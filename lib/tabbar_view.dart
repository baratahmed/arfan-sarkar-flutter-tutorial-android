import 'package:arfan_sarkar/page1.dart';
import 'package:arfan_sarkar/page2.dart';
import 'package:flutter/material.dart';

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
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.camera),),
                  Tab(icon: Icon(Icons.message),),
                ],
              ),
            ),
            body: const TabBarView(children: [
              Page1(),
              Page2()
            ]),
          ),
        ),
      ),
    );
  }
}
