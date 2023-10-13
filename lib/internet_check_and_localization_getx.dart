import 'dart:async';
import 'package:arfan_sarkar/languages.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      // locale: Get.deviceLocale,
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      home: SafeArea(
        child: Scaffold(body: SplashScreen()),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  StreamSubscription? subscription;

  @override
  void initState() {
    subscription = Connectivity().onConnectivityChanged.listen((event) {
      checkConnection();
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }

  Future checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      Fluttertoast.showToast(msg: "Connected to mobile data!");
    } else if (connectivityResult == ConnectivityResult.wifi) {
      Fluttertoast.showToast(
          msg: "Connected to wifi!",
          textColor: Colors.yellow,
          backgroundColor: Colors.black);
    } else {
      Fluttertoast.showToast(msg: "Not Connected!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "app_name".tr,
            style: TextStyle(fontSize: 23),
          ),
          Text(
            "app_title".tr,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale("en", "US"));
              },
              child: Text("ENGLISH")),
          ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale("bn", "BD"));
              },
              child: Text("BANGLA")),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: checkConnection,
            child: Text("Check Internet Connection"),
          ),
        ],
      ),
    );
  }
}
