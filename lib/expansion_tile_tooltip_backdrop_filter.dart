import 'dart:ui';
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
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ExpansionTile(
                    title: Text("ONE"),
                    collapsedBackgroundColor: Colors.red,
                    collapsedTextColor: Colors.white,
                    backgroundColor: Colors.green,
                    textColor: Colors.white,
                    subtitle: Text("THIS IS ONE"),
                    leading: Icon(Icons.access_time,color: Colors.white,),
                    trailing: Icon(Icons.arrow_downward,color: Colors.white,),
                    children: [
                      Container(
                        height: 100,
                        color: Colors.purple,
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("TOOLTIP EXAMPLE"),
                  IconButton(onPressed: (){}, icon: Icon(Icons.add), tooltip: "Add Tooltip",),
                  Tooltip(
                    message: "Container Tooltip",
                    child: Container(
                      height: 200,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

          )),
    );
  }
}
