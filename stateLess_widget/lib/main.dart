import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stateless Widget")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(buttonText: "Button 1",),
              SizedBox(
                height: 10.0,
              ),
              CustomButton(buttonText: "Button 2",),
              SizedBox(
                height: 10.0,
              ),
              CustomButton(buttonText: "Button 3",),
              SizedBox(
                height: 10.0,
              ),
              CustomButton(buttonText: "Button 4",),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonText;

  const CustomButton({
    required this.buttonText,
    Key? key
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("On Pressed");
      },
      child: Container(
        height: 50.0,
        width: 120.0,
        decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Text(
            "$buttonText",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
