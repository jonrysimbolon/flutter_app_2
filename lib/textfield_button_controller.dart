import 'package:flutter/material.dart';

class FiveScreen extends StatefulWidget {
  const FiveScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FiveScreen();
}

class _FiveScreen extends State<FiveScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() { // to prevent memory leak
    _controller.dispose();
    super.dispose();
  }

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
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Write your name here...',
              labelText: 'Your Name',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, ${_controller.text}'),
                      );
                    });
              },
              child: const Text('Submit'))
        ]),
      ),
    );
  }
}
