import 'package:flutter/material.dart';

class EightScreen extends StatefulWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EightScreen();
}

class _EightScreen extends State<EightScreen> {
  final List<int> numberList = const <int>[0, 10, 1, 9, 2, 8, 3, 7, 4, 6, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemCount: numberList.length,
            itemBuilder: (context, index) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    '${numberList[index]}',
                    style: const TextStyle(fontSize: 50),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            }));
  }
}
