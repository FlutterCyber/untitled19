import 'package:flutter/material.dart';
import 'package:untitled19/pages/one_page.dart';
import 'package:untitled19/pages/three_page.dart';
import 'package:untitled19/pages/two_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnePage(),
      routes: {
        OnePage.id:(context)=>OnePage(),
        TwoPage.id:(context)=>TwoPage(),
        ThreePage.id:(context)=>ThreePage(),
      },
    );
  }
}
