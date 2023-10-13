import 'package:flutter/material.dart';

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
          body: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(color: Colors.pinkAccent,)
              ),
              Expanded(
                  flex: 1,
                  child: Container(color: Colors.green,)
              ),
              Expanded(
                  flex: 1,
                  child: Container(color: Colors.blue,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}


