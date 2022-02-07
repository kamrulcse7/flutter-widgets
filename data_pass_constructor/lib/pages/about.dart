import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final String page;

  const About({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$page > About Page"),
        ],
      )),
    );
  }
}
