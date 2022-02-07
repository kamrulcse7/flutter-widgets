import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? text;

  bool _sequre = true;

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
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Name",
                      labelText: "Name",
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 18.0,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.amber,
                        fontSize: 18.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      prefixIcon: Icon(Icons.account_circle),
                      // suffixIcon: Icon(Icons.arrow_forward),
                      // errorText: "Error Input",
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height:20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 18.0,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.amber,
                        fontSize: 18.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      prefixIcon: Icon(Icons.account_circle),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _sequre = !_sequre;
                          });
                        }, 
                        icon: Icon(_sequre?Icons.remove_red_eye:Icons.security),
                      ),
                      // errorText: text!.isEmpty? 'error': null,
                    ),
                    keyboardType: TextInputType.number,
                    obscureText: _sequre,
                    obscuringCharacter: "*",
                    maxLength: 10,
                    onChanged: (value){
                      text = value;
                    },
                    onSubmitted: (value){
                      setState(() {
                        text = value;
                      });
                      print("$text");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}