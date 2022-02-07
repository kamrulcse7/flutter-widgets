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
  double _sValue = 20;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        child: Column(
          children: [
            Slider(
              value: _sValue,
              min: 0.0,
              max: 100.0,
              onChanged: (value){
                setState(() {
                  _sValue = value;
                });
              },
              activeColor: Colors.amber,
              inactiveColor: Colors.green,
              divisions: 20,
              label: "Range",
            ),
            Text("${_sValue.toInt()}"),
          ],
        ),
      ),
    );
  }
}
