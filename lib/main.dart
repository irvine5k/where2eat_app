import 'package:flutter/material.dart';
import 'package:where2eat/screens/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'where2eat',
      home: Home(),
    );
  }
}

