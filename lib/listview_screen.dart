import 'package:flutter/material.dart';

class EightScreen extends StatefulWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EightScreen();
}

class _EightScreen extends State<EightScreen> {
  final List<int> numberList = const <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: numberList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.grey, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        );
      },
    ));
  }
}
