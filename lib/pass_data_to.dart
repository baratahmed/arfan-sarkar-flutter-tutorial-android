import 'package:flutter/material.dart';

class StateLessWidget extends StatelessWidget {
  String? txt;
  StateLessWidget({Key? key,this.txt }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(txt.toString(),style: TextStyle(fontSize: 30),),
      ),
    );
  }
}





class StateFulWidget extends StatefulWidget {
  String? txt;
  StateFulWidget({Key? key,this.txt }) : super(key: key);

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.txt.toString(),style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
