import 'dart:convert' as convert;
import 'package:arfan_sarkar/details.dart';
import 'package:arfan_sarkar/page1.dart';
import 'package:arfan_sarkar/page2.dart';
import 'package:arfan_sarkar/page3.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;
  final _pages = [
    Page1(),
    Page2(),
    Page3()
  ];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: Row(
                children: [
                  NavigationRail(
                    backgroundColor: Colors.black87,
                    labelType: NavigationRailLabelType.all,
                    destinations: [
                      NavigationRailDestination(
                        icon: Icon(Icons.wifi,color: Colors.white,),
                        label: Text("Wifi"),
                        selectedIcon: Icon(Icons.wifi,color: Colors.blue,),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.wb_sunny,color: Colors.white,),
                        label: Text("Sunny"),
                        selectedIcon: Icon(Icons.wb_sunny,color: Colors.blue,),
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: (val){
                      setState(() {
                        _selectedIndex=val;
                      });
                    },
                  ),
                  Expanded(child: Container(child: _pages[_selectedIndex],))
                ],
              )

          )),
    );
  }

}

