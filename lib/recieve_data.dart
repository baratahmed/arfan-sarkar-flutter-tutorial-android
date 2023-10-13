import 'package:arfan_sarkar/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReceiveData extends StatelessWidget {
  const ReceiveData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final providerData = Provider.of<Data>(context);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(providerData.value.toString(),style: TextStyle(fontSize: 100),),
        ),
      ),
    );
  }
}
