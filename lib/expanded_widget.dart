import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: Colors.teal, border: Border.all(color: Colors.white)),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Expanded',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    ));
  }
}
