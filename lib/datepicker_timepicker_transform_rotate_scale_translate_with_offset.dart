import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GetDateButton(),
                  SizedBox(height: 20,),
                  GetTimeButton(),
                  SizedBox(height: 20,),
                  Transform.rotate(
                    angle: pi/4,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Transform.scale(
                    scale: 1.5,
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Transform.translate(
                    offset: Offset(100,30),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.green,
                    ),
                  )

                ],
              ),
            ),

          )),
    );
  }

}



class GetDateButton extends StatefulWidget {
  const GetDateButton({Key? key}) : super(key: key);

  @override
  State<GetDateButton> createState() => _GetDateState();
}

class _GetDateState extends State<GetDateButton> {
  DateTime? _dateTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _dateTime==null ? Text("Choose Date") : Text("Date: ${_dateTime?.day}/${_dateTime?.month}/${_dateTime?.year}",style: TextStyle(fontSize: 40),),
        ElevatedButton(
            onPressed: () async{
              DateTime? date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate:  DateTime(2000),
                  lastDate:  DateTime(2024)
              );

              // if(date!=null){
              //   print("Date: ${date.day}/${date.month}/${date.year}");
              // }
              setState(() {
                _dateTime = date;
              });
            },
            child: Text("Show Date Picker")
        ),
      ],
    );
  }
}


class GetTimeButton extends StatefulWidget {
  const GetTimeButton({Key? key}) : super(key: key);

  @override
  State<GetTimeButton> createState() => _GetTimeState();
}

class _GetTimeState extends State<GetTimeButton> {
  TimeOfDay? _timeOfDay;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _timeOfDay==null ? Text("Choose Time") : Text("Date: ${_timeOfDay?.hour}:${_timeOfDay?.minute}",style: TextStyle(fontSize: 40),),
        ElevatedButton(
            onPressed: ()async{
              TimeOfDay? time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input
              );
              setState(() {
                _timeOfDay = time;
              });
              // if(time!=null){
              //   print("Time: ${time.hour}:${time.minute}");
              // }
            },
            child: Text("Show Time Picker")
        ),
      ],
    );
  }
}


