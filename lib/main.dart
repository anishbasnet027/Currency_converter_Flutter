import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Currency Converter',
      theme: ThemeData(
        fontFamily: 'Arial',
        primaryColor: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
