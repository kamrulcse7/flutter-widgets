import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _sValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey)
          ),
          child: Switch(
            value: _sValue,
            onChanged: (value){
              setState(() {
                _sValue = value;
              });
            },
            activeColor: Colors.red,
            activeTrackColor: Colors.green,
            inactiveTrackColor: Colors.black,
            inactiveThumbColor: Colors.cyan,
          ),
        ),
      ),
    );
  }
}
