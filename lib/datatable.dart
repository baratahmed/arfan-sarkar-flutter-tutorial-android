import 'dart:convert' as convert;
import 'package:arfan_sarkar/details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
              body: DataTable(
                headingRowHeight: 100,
                columns: [
                  DataColumn(label: Text("Name"),tooltip: "Name"),
                  DataColumn(label: Text("Age")),
                  DataColumn(label: Text("Role")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("Barat Ahmed"),showEditIcon: true),
                    DataCell(Text("27")),
                    DataCell(Text("Software Engineer")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Barat Ahmed"),showEditIcon: true),
                    DataCell(Text("27")),
                    DataCell(Text("Software Engineer")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Barat Ahmed"),showEditIcon: true),
                    DataCell(Text("27")),
                    DataCell(Text("Software Engineer")),
                  ]),
                ],
              )

          )),
    );
  }

}

