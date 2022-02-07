import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? text;

  @override
  void initState() {
    super.initState();
    text = "Hello StatefulWidget";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$text"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    text = "Change the value";
                  });
                  print("On Pressed");
                },
                child: Text("Button"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomButton extends StatelessWidget {
//   final String button_text;

//   const CustomButton({
//     required this.button_text,
//     Key? key
//     }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         print("on Tap");
//       },
//       child: Container(
//         height: 40.0,
//         width: 120.0,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           shape: BoxShape.rectangle,
//         ),
//         child: Center(
//           child: Text(
//             button_text,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
