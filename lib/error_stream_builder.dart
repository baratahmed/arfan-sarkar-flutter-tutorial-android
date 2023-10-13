import 'dart:async';

import 'package:flutter/material.dart';

void main() async{
  runApp(const MyApp());
}

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
        home: MyHomePage()
    );
  }
}


class MyHomePage extends StatelessWidget {
  // const MyHomePage({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();
  List<String> languages = [];
  StreamController _streamController = StreamController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Programming Languages"),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  controller: _controller,
                ),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    onPressed: (){
                      final input = _controller.text;
                      languages.add(input);
                      _streamController.sink.add(languages);
                      _controller.clear();
                    },
                    child: Text("Add a Language"),
                  ),
                ),
                Expanded(
                    child: StreamBuilder(
                      stream: _streamController.stream,
                      builder: (_,snapshot){
                        if(snapshot.hasData){
                          return ListView.builder(
                              itemBuilder: (_,index){
                                return Card(
                                  child: ListTile(
                                    title: Text(snapshot.data[index]),
                                  ),
                                );
                              }
                          );
                        }else{
                          return Center(
                            child: Text("Empty List",style: TextStyle(fontSize: 40),),
                          );
                        }
                      },
                    )
                ),
                SizedBox(height: 10,)

              ],
            ),
          ),
        )
    );
  }
}



