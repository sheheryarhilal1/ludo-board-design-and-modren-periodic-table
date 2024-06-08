import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ludo Board'),
        ),
        body: LudoBoard(),
      ),
    );
  }
}

class LudoBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 800,
        height: 800,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createLudoBox(Colors.red),
                createLudoBox(Colors.yellow),
              ],
            ),
            // Middle Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                createLudoBox(Colors.green),
                createLudoBox(Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget createLudoBox(Color color) {
    return Container(
      width: 180,
      height: 180,
      color: color,
      child: const Center(
        child: Text(
          'Game',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
