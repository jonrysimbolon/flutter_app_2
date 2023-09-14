import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

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
      /*body: Container( // pengenalan container
        //padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        //width: 200,
        //height: 100,
        color: Colors.blue,
        child: const Text(
          'Hi',
          style: TextStyle(fontSize: 40),
        ),
      )*/
      body: Container(
        decoration: /* const */ BoxDecoration( // Dekorasi Container
          color: Colors.red,
          //shape: BoxShape.circle,
          /*boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10
            )
          ]*/
          border: Border.all(
            color: Colors.green,
            width: 3
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          'Hi',
          style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
