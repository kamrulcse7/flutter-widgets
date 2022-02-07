import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("About Page"),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
