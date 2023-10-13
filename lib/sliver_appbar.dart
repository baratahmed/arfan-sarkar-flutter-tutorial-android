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
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 200,
                  backgroundColor: Colors.red,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text('Easy Explanation'),
                  ),
                ),
                SliverList(delegate: SliverChildListDelegate(<Widget>[
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                  addDetails("One", "description"),
                ]))

              ],
            )
        ),
      ),
    );
  }
}

Widget addDetails(String name, String description){
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
