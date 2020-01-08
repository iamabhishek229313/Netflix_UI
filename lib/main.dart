import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        secondaryHeaderColor: Colors.blueGrey.shade800,
      ),
      home : new HomePage(),
    );
  }
}
