import 'package:flutter/material.dart';
import 'package:liquid_animation/pages/about.dart';
import 'package:liquid_animation/pages/profile.dart';

import 'package:liquid_swipe/liquid_swipe.dart';

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
  final pages = [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(child: About(), color: Colors.amber),
    Container(child: Profile(), color: Colors.amber),
    Container(color: Colors.yellow),
    Container(color: Colors.purple),
  ];
  Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: LiquidSwipe(pages: pages),
    );
  }
}
