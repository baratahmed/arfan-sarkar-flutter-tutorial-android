import 'package:flutter/material.dart';
import 'package:arfan_sarkar/page1.dart';
import 'package:arfan_sarkar/page2.dart';
import 'package:arfan_sarkar/page3.dart';
import 'package:arfan_sarkar/page4.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  final pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4()
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              selectedFontSize: 15,
              currentIndex: _currentIndex,
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Icon(Icons.message),
                    label: "Message"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call),
                    label: "Call"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.pan_tool),
                    label: "Pan Tool"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.radio),
                    label: "Radio"
                )
              ],
              onTap: (index){
                setState((){
                  _currentIndex = index;
                });
              },
            ),
            appBar: AppBar(
              title: const Text('HOME PAGE'),
              centerTitle: true,
              leading: Icon(Icons.message),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo))
              ],
            ),
            body: pages[_currentIndex]
        ),
      ),
    );
  }
}
