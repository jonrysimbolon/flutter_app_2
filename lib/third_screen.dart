import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  String? _language = 'Dart';
  //String? _name = ''; used when didn't use controller

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
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
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              // Icon button
              // Aksi ketika button diklik
            },
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
          ),
          DropdownButton<String>(
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem(value: 'Dart', child: Text('Dart')),
                DropdownMenuItem(value: 'Kotlin', child: Text('Kotlin')),
                DropdownMenuItem(value: 'Swift', child: Text('Swift')),
              ],
              value: _language,
              hint: const Text('Select language'),
              onChanged: (String? value) {
                setState(() {
                  _language = value;
                });
              }),
          TextField(
            /*onChanged: (String value) { // each changed, the value is re-invoke
              setState(() {
                _name = value;
              });
            },*/
            /*onSubmitted: (String value) { // when submit, the value is re-invoke
              setState(() {
                _name = value;
              });
            },*/
            controller: _controller,
          ),
        ],
      ),
    );
  }
}
