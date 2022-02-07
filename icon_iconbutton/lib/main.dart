import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int volumn_counter = 0;

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
            height: 250.0,
            width: 250.0,
            color: Color(0xFFdddddd),
            child: Column(
              children: [
                Icon(
                  Icons.volume_up,
                  size: 40.0,
                  color: Colors.red,
                ),
                IconButton(
                    onPressed: () {
                      print("On Pressed");
                      setState(() {
                        volumn_counter++;
                      });
                    },
                    icon: Icon(Icons.volume_up)),
                Text("$volumn_counter")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
