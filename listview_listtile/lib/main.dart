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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.view_array),
                title: Text("Item 1"),
                subtitle: Text("Item subtitle"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.view_array),
                title: Text("Item 1"),
                subtitle: Text("Item subtitle"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.view_array),
                title: Text("Item 1"),
                subtitle: Text("Item subtitle"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                leading: Icon(Icons.view_array),
                title: Text("Item 1"),
                subtitle: Text("Item subtitle"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}