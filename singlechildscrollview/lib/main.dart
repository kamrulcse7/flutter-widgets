import 'package:flutter/material.dart';

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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(height: 200.0, width: 300.0, color: Colors.amber,),
              SizedBox(height: 10.0,),
              Container(height: 200.0, width: 300.0, color: Colors.amber,),
              SizedBox(height: 10.0,),
              Container(height: 200.0, width: 300.0, color: Colors.amber,),
              SizedBox(height: 10.0,),
              Container(height: 200.0, width: 300.0, color: Colors.amber,),
              SizedBox(height: 10.0,),
              Container(height: 200.0, width: 300.0, color: Colors.amber,),
              SizedBox(height: 10.0,),
              Container(height: 200.0, width: 300.0, color: Colors.amber,),
              SizedBox(height: 10.0,),
              Container(height: 200.0, width: 300.0, color: Colors.amber,),
              SizedBox(height: 10.0,),
            ],
          ),
        ),
      ),
    );
  }
}