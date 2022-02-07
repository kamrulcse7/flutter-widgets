import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _rValue = 0;

  void method(int? value){
    setState(() {
      _rValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          child: Column(
            children: [
              Radio(
                value: 1,
                groupValue: _rValue,
                onChanged: method,
                activeColor: Colors.red,
              ),
              Radio(
                value: 2,
                groupValue: _rValue,
                onChanged: method,
                activeColor: Colors.red,
              ),
              Radio(
                value: 3,
                groupValue: _rValue,
                onChanged: method,
                activeColor: Colors.red,
              ),
              Radio(
                value: 4,
                groupValue: _rValue,
                onChanged: method,
                activeColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
