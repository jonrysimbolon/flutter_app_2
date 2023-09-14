import 'package:flutter/material.dart';

class SevenScreen extends StatefulWidget {
  const SevenScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SevenScreen();
}

class _SevenScreen extends State<SevenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        actions: [
          IconButton(
              tooltip: 'Search',
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ],
        leading: IconButton(
          tooltip: 'Drawer',
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: const Center(
          child: Text(
        'Custom Font',
        style: TextStyle(
          fontFamily: 'Oswald',
          fontSize: 30,
        ),
      )),
    );
  }
}
