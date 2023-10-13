import 'package:arfan_sarkar/pass_data_to.dart';
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
                  children: [
                    GoToStateLessWidget(),
                    GoToStateFulWidget()
                  ],
                ),
              )

          )),
    );
  }
}

class GoToStateLessWidget extends StatelessWidget {
  const GoToStateLessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>StateLessWidget(txt: "Barat Ahmed")));
          },
          child: const Text("Pass Data to Stateless Widget")
      ),
    );
  }
}

class GoToStateFulWidget extends StatelessWidget {
  const GoToStateFulWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> StateFulWidget(txt: "Software Engineer")));
          },
          child: const Text("Pass Data to Stateful Widget")
      ),
    );
  }
}



