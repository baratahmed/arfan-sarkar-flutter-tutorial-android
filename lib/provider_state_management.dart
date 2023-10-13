import 'package:arfan_sarkar/data.dart';
import 'package:arfan_sarkar/recieve_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
    create: (context) => Data(),
    child: const MyApp())
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int value = 0;
  //
  // Increment(){
  //   setState(() {
  //     value++;
  //   });
  // }
  // Decrement(){
  //   setState(() {
  //     value--;
  //   });
  // }
  // Reset(){
  //   setState(() {
  //     value = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    final providerData = Provider.of<Data>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(providerData.value.toString(), style: TextStyle(fontSize: 50),),
                  ElevatedButton(
                      onPressed: (){
                        providerData.Increment();
                      },
                      child: Text("ADD (+)")
                  ),
                  ElevatedButton(
                      onPressed: (){
                        providerData.Decrement();
                      },
                      child: Text("SUB (-)")
                  ),
                  ElevatedButton(
                      onPressed: (){
                        providerData.Reset();
                      },
                      child: Text("RESET")
                  ),
                  GoToNextPage(),

                ],
              ),
            )
        ),
      ),
    );
  }
}

class GoToNextPage extends StatelessWidget {
  const GoToNextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ReceiveData()));
        },
        child: Text("NEXT")
    );
  }
}


