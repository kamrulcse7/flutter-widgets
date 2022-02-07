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
  bool _cValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple),
        ),
        child: CheckboxListTile(
          value: _cValue,
          onChanged: (value) {
            setState(() {
              _cValue = value!;
            });
          },
          title: Text("Item Name"),
          subtitle: Text("Sub title"),
          secondary: Container(
            width: 50.0,
            height: 50.0,
            child: Icon(Icons.account_circle),
          ),
          activeColor: Colors.red,
          checkColor: Colors.black,
          selected: _cValue,
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
