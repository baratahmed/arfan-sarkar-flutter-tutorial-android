import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height/2;
    // var width = MediaQuery.of(context).size.width/2;
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

          // body: Center(
          //   child: Container(
          //     height: height,
          //     width: width,
          //     color: Colors.red,
          //   ),
          // )

          body: ListView(
            children: const [
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello2"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
              ListTile(
                title: Text("Hello"),
                subtitle: Text("Introduction Message"),
                leading: Icon(Icons.add_a_photo),
                trailing: Icon(Icons.message),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
