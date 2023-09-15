import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        border: Border.all(color: Colors.white),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Flexible',
          style: TextStyle(
            color: Colors.teal,
            fontSize: 24,
          ),
        ),
      ),
    ));
  }
}
