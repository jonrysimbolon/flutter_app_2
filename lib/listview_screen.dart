import 'package:flutter/material.dart';

class EightScreen extends StatefulWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EightScreen();
}

class _EightScreen extends State<EightScreen> {
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: numberList.map((number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              '$number',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList(),
    ));
  }
}
