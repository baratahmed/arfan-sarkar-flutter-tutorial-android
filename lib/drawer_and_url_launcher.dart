import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const url = "https://www.google.com";
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            key: _globalKey,
            // endDrawer: Drawer(),
            drawer: Drawer(),
            appBar: AppBar(
              title: Text('DRAWER'),
              centerTitle: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () => _globalKey.currentState!.openDrawer(),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _globalKey.currentState!.openDrawer(),
                    child: Text("OPEN DRAWER"),
                  ),
                  ElevatedButton(
                    onPressed: () => launch(url),
                    child: Text("Go To Google"),
                  ),
                  ElevatedButton(
                    onPressed: () => launch("tel:01706351202"),
                    child: Text("Go To CALL/Dialer"),
                  ),
                  ElevatedButton(
                    onPressed: () => launch("sms:01706351202"),
                    child: Text("Go To SMS"),
                  ),

                ],
              ),
            )

        ),
      ),
    );
  }
}

