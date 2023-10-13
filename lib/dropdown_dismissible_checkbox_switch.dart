import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var selected = "DROPDOWN";

  bool? _checkedValue = false;
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(selected, style: TextStyle(fontSize: 30),),
                    DropdownButton(
                        hint: Text("Select One"),
                        items: [
                          DropdownMenuItem(
                              value: "Easy",
                              child: Text("Easy")
                          ),
                          DropdownMenuItem(
                              value: "Medium",
                              child: Text("Medium")
                          ),
                          DropdownMenuItem(
                              value: "Hard",
                              child: Text("Hard")
                          ),
                        ],
                        onChanged: (value){
                          setState(() {
                            selected = value.toString();
                          });
                        }
                    ),
                    SizedBox(height: 20,),
                    Dismissible(
                      key: ValueKey("abc"),
                      child: ListTile(
                        title: Text("CD"),
                        subtitle: Text("Cherished Dream"),
                        trailing: Icon(Icons.star),
                      ),
                      background: Container(
                        color: Colors.red,
                        child: Icon(Icons.delete),
                      ),
                      secondaryBackground: Container(
                        color: Colors.blue,
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(_checkedValue == false ? "Unchecked" : "Checked",style: TextStyle(fontSize: 20),),
                    Checkbox(
                        value: _checkedValue,
                        onChanged: (val){
                          setState(() {
                            _checkedValue =  val;
                          });
                        }
                    ),
                    SizedBox(height: 20,),
                    Text(_switchValue == false ? "OFF" : "ON",style: TextStyle(fontSize: 20),),
                    Switch(
                        value: _switchValue,
                        onChanged: (bool val){
                          setState(() {
                            _switchValue = val;
                          });
                        }
                    )

                  ],
                ),
              )
          )
      ),
    );

  }
}







