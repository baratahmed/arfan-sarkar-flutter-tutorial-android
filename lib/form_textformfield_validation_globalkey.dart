import 'package:arfan_sarkar/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            body:  Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter your name";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter your age";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter your phone";
                      }
                      return null;
                    },
                  ),
                  SubmitButton(formKey: _formKey,),
                ],
              ),
            )

        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  final formKey;
  SubmitButton({Key? key,this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          if(formKey.currentState!.validate()){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          }

        },
        child: Text("SUBMIT")
    );
  }
}

