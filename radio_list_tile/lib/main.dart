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
  int _rValue = 0;

  void method(int? value){
    setState(() {
      _rValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        child: Column(
          children: [
            RadioListTile(
              value: 1,
              groupValue: _rValue,
              onChanged: method,
              title: Text("Flutter"),
              subtitle: Text("Subtitle"),
              secondary: Icon(Icons.favorite),
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            RadioListTile(
              value: 2,
              groupValue: _rValue,
              onChanged: method,
              title: Text("Java"),
              subtitle: Text("Subtitle"),
              secondary: Icon(Icons.favorite),
              controlAffinity: ListTileControlAffinity.trailing,
              activeColor: Colors.red,
              selected: _rValue==2?true:false,
            ),
          ],
        ),
      ),
    );
  }
}
