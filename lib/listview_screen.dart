import 'package:flutter/material.dart';

class EightScreen extends StatefulWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EightScreen();
}

class _EightScreen extends State<EightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 50),
                )
                ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            )
          ]
      )
    );
  }
}
