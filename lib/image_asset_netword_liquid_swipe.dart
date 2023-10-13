import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final pages = [
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Center(child: Image.asset("images/one.jpg"),),
            SizedBox(height: 10,),
            Center(child: Image.network("https://cdn.pixabay.com/photo/2023/05/03/12/45/bird-7967577_960_720.jpg"),),
          ],
        ),
      ),
      Container(color: Colors.red,),
      Container(color: Colors.green,),
      Container(color: Colors.blue,),
      Container(color: Colors.black,),
    ];

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
            body: LiquidSwipe(pages: pages,)
        ),
      ),
    );
  }
}
