import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _crossfadeCheck = true;
  bool _animatedContainerCheck = false;

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
                  AnimatedCrossFade(
                      firstChild: Container(
                        color: Colors.deepOrange,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _crossfadeCheck = false;
                            });
                          },
                          child: Text("PRESS"),
                        ),
                      ),
                      secondChild: Text("GREAT"),
                      crossFadeState: _crossfadeCheck
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: Duration(seconds: 1)),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _animatedContainerCheck=!_animatedContainerCheck;
                      });
                    },
                    child: AnimatedContainer(
                        height: _animatedContainerCheck==false?100:200,
                        width: _animatedContainerCheck==false?100:200,
                        color: Colors.purple,
                        duration: Duration(milliseconds: 400)
                    ),
                  )
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _crossfadeCheck = true;
                });
              },
              child: Icon(Icons.add),
            ),
          )),
    );
  }
}
