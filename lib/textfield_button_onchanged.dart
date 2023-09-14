import 'package:flutter/material.dart';

class FourScreen extends StatefulWidget {
  const FourScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FourScreen();
}

class _FourScreen extends State<FourScreen> {
  String _name = '';
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Hello, $_name'),
                        );
                      });
                },
                child: const Text('Submit'))
          ]),
        ));
  }
}
