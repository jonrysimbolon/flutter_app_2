import 'package:flutter/material.dart';
//import 'package:flutter_app_2/textfield_button_controller.dart';
//import 'package:flutter_app_2/first_screen.dart';
//import 'package:flutter_app_2/second_screen.dart';
//import 'package:flutter_app_2/third_screen.dart';
//import 'package:flutter_app_2/textfield_button_onchanged.dart';
//import 'package:flutter_app_2/image_component.dart';
//import 'package:flutter_app_2/font_component.dart';
//import 'package:flutter_app_2/listview_screen.dart';
import 'package:flutter_app_2/expanded_and_flexible_widget.dart';

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
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      //home: const FirstScreen(),
      //home: const SecondScreen(),
      //home: const ThirdScreen(),
      //home: const FourScreen(),
      //home: const FiveScreen(),
      //home: const SixScreen(),
      //home: const SevenScreen(),
      //home: const EightScreen(),
      home: const NineScreen(),
    );
  }
}
