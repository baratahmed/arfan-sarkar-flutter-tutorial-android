import 'package:arfan_sarkar/Second.dart';
import 'package:flutter/material.dart';
import 'package:arfan_sarkar/page1.dart';
import 'package:arfan_sarkar/page2.dart';
import 'package:arfan_sarkar/page3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('HOME PAGE'),
              centerTitle: true,
              leading: Icon(Icons.message),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo))
              ],
            ),
            body: GoToSecondPage()
        ),
      ),
    );
  }
}



class GoToSecondPage extends StatelessWidget {
  const GoToSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 50,
        child: GestureDetector(
          child: const Hero(
            tag: "add",
            child: Icon(
              Icons.add_a_photo,
              size: 50,
            ),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Second()));
          },
        ),
      ),
    );
  }
}
