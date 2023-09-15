import 'package:flutter/material.dart';

class SixScreen extends StatefulWidget {
  const SixScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SixScreen();
}

class _SixScreen extends State<SixScreen> {
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
      body: Center(
        child: Image.network( // from remote
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
        )
            //Image.asset('images/android.png'), // from local
      ),
    );
  }
}
