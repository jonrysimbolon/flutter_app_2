import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

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
      body: /*const Row( // Row Widget
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Icon(Icons.share),
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down)
        ],
      ),*/
      const Column(
        children: [
          Text( // Text pertama (Judul)
            'Sebuah Judul',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          Text('Lorem ipsum dolor sit amet') // Text kedua (subtitle)
        ],
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
