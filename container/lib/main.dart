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
          child: Container(
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            height: 250.0,
            width: 250.0,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.amber,
              // shape: BoxShape.circle,
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.blue,
                width: 10.0,
              ),
              
            ),
            transform: Matrix4.rotationZ(0.5),
            // transform: Matrix4.rotationY(90),
            // transform: Matrix4.rotationX(90),
          ),
        ),
      ),
    );
  }
}
