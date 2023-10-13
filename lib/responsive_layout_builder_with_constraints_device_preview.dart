import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';


void main() => runApp( DevicePreview(builder: (_)=>const MyApp()));

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
          body: LayoutBuilder(
              builder: (_,constraints){
                if(constraints.maxWidth<=480){
                  return Container(
                    color: Colors.red,
                    child: Center(
                      child: Text("Less Than 480"),
                    ),
                  );
                }else if(constraints.maxWidth>480 && constraints.maxWidth<=800){
                  return Container(
                    color: Colors.green,
                    child: Center(
                      child: Text("Greater Than 480 and Less Than 800"),
                    ),
                  );
                }else {
                  return Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text("Greater Than  800"),
                    ),
                  );
                }

              }
          ),

        ),
      ),
    );
  }
}

