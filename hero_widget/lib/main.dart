import 'package:flutter/material.dart';
import 'package:hero_widget/second.dart';

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

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: CircleAvatar(
          radius: 50,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Second(),
                ),
              );
            },
            child: Hero(
              tag: "Hello",
              child: Icon(
                Icons.add_a_photo,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
