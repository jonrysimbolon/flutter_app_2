import 'package:flutter/material.dart';

class ElevenScreen extends StatelessWidget {
  const ElevenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Row(
          children: [
            Expanded(child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Screen width: ${screenSize.width.toStringAsFixed(2)}', // asFixed(2), membuat hanya ada 2 angka dibelang koma
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'LayoutBuilder: ${constraints.maxWidth}',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ],
              );
            })),
            Expanded(
                flex: 3,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                            style: const TextStyle(
                                color: Colors.blueGrey, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'LayoutBuilder: ${constraint.maxWidth}',
                            style: const TextStyle(
                                color: Colors.blueGrey, fontSize: 18),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  },
                ))
          ],
        ));
  }
}
