import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _value = 10.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomDialogBox(),
                  SizedBox(height: 10,),
                  ShowSnackBar(),
                  SizedBox(height: 10,),
                  ShowToast(),
                  SizedBox(height: 60,),
                  Text("This is Slider",style: TextStyle(fontSize: _value),),
                  Slider(
                      min: 10,
                      max: 50,
                      value: _value,
                      onChanged: (value){
                        setState(() {
                          _value = value;
                        });
                      }
                  ),
                  SizedBox(height: 30,),
                  RichText(
                    text: TextSpan(
                        text: "Cherished Dream ",
                        style: TextStyle(fontSize: 20,color: Colors.green, fontStyle: FontStyle.italic),
                        children: [
                          TextSpan(text: "Subscribe", style: TextStyle(fontSize: 25,color: Colors.red))
                        ]
                    ),
                  )
                ],
              )
          )
      ),
    );

  }
}

class CustomDialogBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context){
                  return Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 270,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 40,),
                                Text("Alert Dialog",style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                ),),
                                SizedBox(height: 20,),
                                Text("Description fd gddgf dgf dghfdfg hgfd ghf hgfd fgd gf df khgfjhg fu u6yjk ",style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: EdgeInsets.only(left: 170),
                                  child: ElevatedButton(
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      child: Text("OK")
                                  ),

                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: -50,
                            child: CircleAvatar(
                              radius: 50,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                  child: Image.asset("images/logo.png")),
                            )
                        )
                      ],
                    ),
                  );
                }
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(25.0),
            child:  Text("Show Custom Dialog Box", style: TextStyle(fontSize: 20),),
          ),
        )
    );
  }
}


class ShowSnackBar extends StatelessWidget {
  const ShowSnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
          onPressed: (){
            final snackBar = SnackBar(
              duration: Duration(seconds: 2),
              content: const Text('Yay! A SnackBar!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Padding(
            padding: EdgeInsets.all(25.0),
            child:  Text("Show SnackBar", style: TextStyle(fontSize: 20),),
          ),
        )
    );
  }
}



class ShowToast extends StatelessWidget {
  const ShowToast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
          onPressed: (){
            Fluttertoast.showToast(
              msg: "Cherished Dream",
              toastLength: Toast.LENGTH_SHORT,
              backgroundColor: Colors.black,
              textColor: Colors.yellow,
              gravity: ToastGravity.BOTTOM,
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(25.0),
            child:  Text("Show Toast", style: TextStyle(fontSize: 20),),
          ),
        )
    );
  }
}








