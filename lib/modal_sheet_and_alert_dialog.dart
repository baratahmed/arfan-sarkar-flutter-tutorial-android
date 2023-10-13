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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShowModalSheet(),
                SizedBox(height: 20,),
                ShowAlertDialog(),
              ],
            )
        ),
      ),
    );
  }
}

class ShowModalSheet extends StatelessWidget {
  const ShowModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              height: 250,
              child: const Column(
                children: [
                  ListTile(
                    title: Text("One"),
                    subtitle: Text("One Subtitle"),
                    trailing: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text("One"),
                    subtitle: Text("One Subtitle"),
                    trailing: Icon(Icons.access_alarm),
                  ),
                  ListTile(
                    title: Text("One"),
                    subtitle: Text("One Subtitle"),
                    trailing: Icon(Icons.access_alarm),
                  ),
                ],
              ),
            );
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Show Modal Bottom Sheet"),
        ),
      ),
    );
  }
}


class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  title: Text("ALERT"),
                  content: Text("This is Simple Alert Dialog Box"),
                  actions: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text("OK")
                    )
                  ],
                );
              }
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Show ALert Dialog"),
        ),
      ),
    );
  }
}


