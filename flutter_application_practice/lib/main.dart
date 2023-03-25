import 'package:flutter/material.dart';
import 'package:flutter_application_practice/sample1.dart';
import 'package:flutter_application_practice/sample2.dart';
import 'package:flutter_application_practice/sample3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

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
        textTheme: GoogleFonts.sawarabiMinchoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MySample1(),
    );
  }
}
