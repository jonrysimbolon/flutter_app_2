import 'package:flutter/material.dart';

class TenScreen extends StatelessWidget {
  const TenScreen({super.key});

  final String message = 'Hello from First Screen!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TenOneScreen(message); // to TenOneScreen
            }));
          },
        ),
      ),
    );
  }
}

class TenOneScreen extends StatelessWidget {
  const TenOneScreen(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          OutlinedButton(
            child: const Text('Kembali'),
            onPressed: () {
              Navigator.pop(context); // Back
            },
          ),
        ],
      )),
    );
  }
}
