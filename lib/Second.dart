import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Hero(
            tag: "add",
            child: Icon(
              Icons.access_time,
              size: 250,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}
