import 'package:flutter/cupertino.dart';
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
      initialRoute: "/",
      routes: {
        "/first": (context) => FirstScreen(),
        "/second": (context) => SecondScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: FirstScreen(),
        ),
      ),
    );
  }
}


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/second");
                },
                child: const Text("First Screen"),
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>SecondScreen()));
              }, child: Text("PUSH")),
              OutlinedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
              }, child: Text("PUSH REPLACED"))
            ],
          ),
        ),
      ),
    );
  }
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: OutlinedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/first");
            },
            child: const Text("Second Screen"),
          ),
        ),
      ),
    );
  }
}

