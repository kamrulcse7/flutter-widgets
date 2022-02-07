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
  bool _svalue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
            child: SwitchListTile(
              value: _svalue,
              onChanged: (value){
                setState(() {
                  _svalue = value;
                });
                print(value);
              },
              title: Text("Title"),
              subtitle: Text("subtitle"),
              secondary: Icon(Icons.favorite),
              selected: true,
              
            ),
          ),
        ),
      ),
    );
  }
}
