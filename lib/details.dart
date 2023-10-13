import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  var receivedData;
  DetailsPage({Key? key,this.receivedData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(receivedData["name"]),
            Text(receivedData["company"]["name"]),
            Text(receivedData["email"]),
            Text(receivedData["phone"]),
            Text(receivedData["website"]),
            Text(receivedData["address"]["geo"]["lat"]),
            Text(receivedData["address"]["geo"]["lng"]),
          ],
        ),
      ),
    ));
  }
}
