import 'package:flutter/material.dart';

void main() => runApp( const MyApp());

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
            appBar: AppBar(title: Text("Responsive"),centerTitle: true,backgroundColor: Colors.purpleAccent,),
            body: OrientationBuilder(
              builder: (_,orientation){
                if(orientation==Orientation.portrait){
                  return Container(
                    color: Colors.purple,
                  );
                }else{
                  return Container(
                    color: Colors.green,
                  );
                }
              },
            )

        ),
      ),
    );
  }
}

