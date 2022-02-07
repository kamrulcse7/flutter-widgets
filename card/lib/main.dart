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
          child: Card(
            color: Colors.blue,
            elevation: 50.0,
            shadowColor: Colors.amber,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: BorderSide(
                color: Colors.red,
                width: 5.0,
              )
            ),
            child: Container(
              height: 200.0,
              width: 250.0,
            ),
          ),
        ),
      ),
    );
  }
}