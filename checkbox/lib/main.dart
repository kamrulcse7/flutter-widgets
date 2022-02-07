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
        child: Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: _cValue,
            onChanged: (status) {
              print(status);
              setState(() {
                _cValue = status!;
              });
            },
            activeColor: Colors.red,
            checkColor: Colors.black,
            // tristate: true,
          ),
        ),
      ),
    );
  }
}
