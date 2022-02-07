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
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index){
              return ListTile(
                leading: Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                title: Text("Item ${index+1}"),
                subtitle: Text("subtitle"),
                trailing: Icon(Icons.arrow_forward),
              );
            }
          ),
        ),
      ),
    );
  }
}