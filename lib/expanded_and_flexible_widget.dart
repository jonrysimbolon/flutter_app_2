import 'package:flutter/material.dart';
import 'package:flutter_app_2/expanded_widget.dart';
import 'package:flutter_app_2/flexible_widget.dart';

class NineScreen extends StatefulWidget {
  const NineScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NineScreen();
}

class _NineScreen extends State<NineScreen> {
  //final List<int> numberList = const <int>[0, 10, 1, 9, 2, 8, 3, 7, 4, 6, 5];

  /*@override // untuk menampilkan view dengan expanded
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 2,
            child: Container(
          color: Colors.red,
        )),
        Expanded(
            child: Container(
          color: Colors.orange,
        )),
        Expanded(
            child: Container(
          color: Colors.yellow,
        )),
        Expanded(
            child: Container(
          color: Colors.green,
        )),
        Expanded(
            child: Container(
          color: Colors.blue,
        )),
        Expanded(
            child: Container(
          color: Colors.indigo,
        )),
        Expanded(
            child: Container(
          color: Colors.purple,
        ))
      ],
    ));
  }*/

  @override // combo expanded & flexible
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Row(
          children: [
            ExpandedWidget(),
            FlexibleWidget(),
          ],
        ),
        Row(
          children: [
            ExpandedWidget(),
            ExpandedWidget(),
          ],
        ),
        Row(
          children: [
            FlexibleWidget(),
            FlexibleWidget(),
          ],
        ),
        Row(
          children: [
            FlexibleWidget(),
            ExpandedWidget(),
          ],
        ),
      ],
    )));
  }
}
