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

          // body: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Center(child: Text('This is my First App', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),)),
          //     ElevatedButton(onPressed: (){}, child: const Text('CLICK')),
          //     Container(
          //       height: 200,
          //       width: 200,
          //       decoration: BoxDecoration(color: Colors.deepPurple),
          //       child: Center(child: const Text("I Love Coding", style: TextStyle(fontSize: 20, color: Colors.white),)),
          //     )
          //   ],
          // ),


          // body: SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          //   child: Column(
          //     children: [
          //       Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.deepOrange,
          //       ),
          //       const SizedBox(height: 10,),
          //       Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.deepOrange,
          //       ),
          //       const SizedBox(height: 10,),
          //       Container(
          //         height: 200,
          //         width: 200,
          //         color: Colors.deepOrange,
          //       ),
          //     ],
          //   ),
          // ),

          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.deepOrange,
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.deepOrange,
                  ),
                ],
              ),
            ],
          ),

        ),
      ),
    );
  }
}
