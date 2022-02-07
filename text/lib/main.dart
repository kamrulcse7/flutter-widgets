// import 'dart:ui';

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Material App Bar'),
//         ),
//         body: Center(
//           child: Container(
//             height: 300.0,
//             width: 300.0,
//             color: Color(0xFFdddddd),
//             child: Text(
//               "Hello, I'm Kamrul Hasan. I'm From Bangladesh. I have Compleated My Diploma In Computer Technology form Noakhali Ideal Polytechnic",
//               textAlign: TextAlign.center,
//               // textScaleFactor: 2,
//               overflow: TextOverflow.ellipsis,
//               maxLines: 2,
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 20,
//                 // fontStyle: FontStyle.italic,
//                 fontWeight: FontWeight.w500,
//                 letterSpacing: 2.0,
//                 wordSpacing: 10.0,
//                 // fontFamily: "Roboto",
//                 // fontFamily: "Neonderthaw",
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              height: 300.0,
              width: 300.0,
              color: Color(0xFFdddddd),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    text: "Hello ",
                    children: [
                      TextSpan(
                        text: "I'M ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: "Kamrul Hasan",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
