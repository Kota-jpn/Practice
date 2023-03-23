import 'package:flutter/material.dart';
import 'package:flutter_application_practice/sample1.dart';
import 'package:flutter_application_practice/sample2.dart';
import 'package:flutter_application_practice/sample3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySample1(),
    );
  }
}
