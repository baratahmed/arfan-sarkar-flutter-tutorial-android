import 'package:arfan_sarkar/page1.dart';
import 'package:arfan_sarkar/page2.dart';
import 'package:arfan_sarkar/page3.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _index = 0;
  final pages = [Page1(),Page2(),Page3()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              index: 0,
              color: Colors.white,
              buttonBackgroundColor: Colors.white,
              backgroundColor: Colors.blue,
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 600),
              onTap: (index){
                setState(() {
                  _index = index;
                });
              },
              items: [
                Icon(Icons.favorite),
                Icon(Icons.ac_unit),
                Icon(Icons.accessible),
              ],
            ),
            body: pages[_index]
        ),
      ),
    );
  }
}
