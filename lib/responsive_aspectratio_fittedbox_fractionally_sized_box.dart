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
          appBar: AppBar(title: Text("Responsive"),centerTitle: true,backgroundColor: Colors.black54,),
          body: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 5,),
              FittedBox(
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width/2,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width/3,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width/3,
                      color: Colors.purpleAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: FractionallySizedBox(
                  heightFactor: 0.5,
                  widthFactor: 0.5,
                  child: Container(
                    color: Colors.yellow,
                    child: FractionallySizedBox(
                      heightFactor: 0.5,
                      widthFactor: 0.5,
                      child: Container(
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

        ),
      ),
    );
  }
}

