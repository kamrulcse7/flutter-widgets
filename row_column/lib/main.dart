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
          // child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text("Hello"),
          //     Text("Hello"),
          //     Text("Hello"),
          //     Text("Hello"),
          //   ],
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Data 1, "),
              Text("Data 2, "),
              Text("Data 3, "),
              Text("Data 4, "),
              Text("Data 5 "),
            ],
          ),
        ),
      ),
    );
  }
}