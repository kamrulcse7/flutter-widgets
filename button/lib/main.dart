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
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.account_circle),
                  label: Text("Button"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                
                
                TextButton(
                  onPressed: () {},
                  child: Text("Button"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.account_circle),
                  label: Text("Button"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.volume_up),
                ),
                SizedBox(
                  height: 10.0,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Text("Click"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
