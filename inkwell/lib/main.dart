import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              print("On Tap");
            },
            child: Container(
              width: 100.0,
              height: 40.0,
              child: Center(child: Text('Button')),
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
