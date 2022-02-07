import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "Hello",
          child: Icon(
            Icons.add_a_photo,
            size: 250,
          ),
        ),
      ),
    );
  }
}
