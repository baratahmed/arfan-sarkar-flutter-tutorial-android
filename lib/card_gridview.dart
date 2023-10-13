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
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: [
                    Card(
                      color: Colors.deepPurple,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(50))
                          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50))
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Card(
                      color: Colors.deepOrange,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(50))
                          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50))
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(50))
                          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50))
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Card(
                      color: Colors.yellow,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(50))
                          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50))
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Card(
                      color: Colors.black,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(50))
                          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50))
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Card(
                      color: Colors.pink,
                      elevation: 10,
                      shape: const RoundedRectangleBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(50))
                          borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50))
                      ),
                      child: Container(
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}


