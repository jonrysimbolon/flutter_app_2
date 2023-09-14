import 'package:flutter/material.dart';
//import 'package:flutter_app_2/first_screen.dart';
//import 'package:flutter_app_2/second_screen.dart';
import 'package:flutter_app_2/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const FirstScreen(),
      //home: const SecondScreen(),
      home: const ThirdScreen(),
    );
  }
}