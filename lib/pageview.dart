import 'package:flutter/material.dart';
import 'package:arfan_sarkar/page1.dart';
import 'package:arfan_sarkar/page2.dart';
import 'package:arfan_sarkar/page3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            body: PageView(
              scrollDirection: Axis.vertical,
              // scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                Page1(),
                Page2(),
                Page3(),
              ],
            )
        ),
      ),
    );
  }
}


