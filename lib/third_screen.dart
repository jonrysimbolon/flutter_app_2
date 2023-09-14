import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  String? _language = 'Dart';
  bool lightOn = false;
  var listOfLanguage = ['Dart', 'Kotlin', 'Swift'];
  bool agree = false;

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
          Switch(
              value: lightOn,
              onChanged: (bool value) {
                setState(() {
                  lightOn = value;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light Off'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              }),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                listOfLanguage.length,
                (index) => ListTile(
                      leading: Radio<String>(
                        value: listOfLanguage[index],
                        groupValue: _language,
                        onChanged: (String? value) {
                          setState(() {
                            _language = value;
                            showSnackBar();
                          });
                        },
                      ),
                      title: Text(listOfLanguage[index]),
                    )),
          ),
          ListTile(
            leading: Checkbox(
              onChanged: (bool? value) {
                setState(() {
                  agree = value!;
                });
              },
              value: agree,
            ),
            title: const Text('Agree / Disagree'),
          )
        ],
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$_language selected'),
      duration: const Duration(seconds: 1),
    ));
  }
}
