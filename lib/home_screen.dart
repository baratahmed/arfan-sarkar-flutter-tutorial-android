import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:arfan_sarkar/payment_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var obj = PaymentController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    FirebaseMessaging.instance.getInitialMessage();

    // For Foreground State
    FirebaseMessaging.onMessage.listen((message) {
      if(message.notification != null){
        print(message.notification!.title);
        print(message.notification!.body);
      }
    });

    // For Background State (Not terminated)
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if(message.notification != null){
        print(message.notification!.title);
        print(message.notification!.body);
        print(message.data['path']);
        Navigator.pushNamed(context, message.data["path"]);
      }
    });

    // For Terminated State
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if(message != null){
        print(message.notification!.title);
        print(message.notification!.body);
        print(message.data['path']);
        Navigator.pushNamed(context, message.data["path"]);
      }
    });
  }


  Future _exitDialog(context){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Are you sure to close the app?"),
            content: Row(
              children: [
                ElevatedButton(onPressed: ()=>Get.back(), child: Text("NO")),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: ()=>SystemNavigator.pop(), child: Text("YES")),
              ],
            ),
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: (){
          _exitDialog(context);
          return Future.value(false);
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HOME SCREEN"),
                ElevatedButton(
                  onPressed: (){
                      obj.makePayment(amount: '5', currency: 'USD');
                  },
                  child: Text("MAKE A STRIPE PAYMENT")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
