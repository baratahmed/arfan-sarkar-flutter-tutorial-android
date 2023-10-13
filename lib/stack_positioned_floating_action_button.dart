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
          body: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
                Positioned(child: CircleAvatar(radius: 50,backgroundColor: Colors.red,),bottom: -50,)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
        ),
      ),
    );
  }
}
