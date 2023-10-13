import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:arfan_sarkar/homepage.dart';

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
              body: Introduction()
          )),
    );
  }
}


class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "First",
            body: "This is our first description",
            image: Image.asset("images/one.jpg",width: 350,)
        ),
        PageViewModel(
            title: "Second",
            body: "This is our second description",
            image: Image.asset("images/two.jpg",width: 350,)
        ),
        PageViewModel(
            title: "Third",
            body: "This is our third description",
            image: Image.asset("images/logo.png",width: 350,)
        ),
      ],
      onDone: (){
        Navigator.push(context, CupertinoPageRoute(builder: (ctx)=>HomePage()));
      },
      done: Text("DONE"),
      showNextButton: true,
      next: Text("NEXT"),
      skip: Text("SKIP"),
      showSkipButton: true,
      dotsDecorator: DotsDecorator(
          size: Size(10.0,10.0),
          color: Colors.grey,
          activeSize: Size(23.0,10.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          )
      ),
    );
  }
}
