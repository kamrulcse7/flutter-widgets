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
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Container(
//                 height: 200.0,
//                 width: 200.0,
//                 color: Colors.amber,
//               ),
//               Positioned(
//                 top: 0,
//                 right: 0,
//                 child: Container(
//                   height: 100.0,
//                   width: 100.0,
//                   color: Colors.red,
//                 ),
//               ),
//               Positioned(
//                 bottom: -25,
//                 left: 20,
//                 // height: 70.0,
//                 // width: 70.0,
//                 child: Container(
//                   height: 50.0,
//                   width: 50.0,
//                   color: Colors.blue,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


////////////////////////////////////////

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
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFdddddd),
                ),
              ),
              Container(
                width: 190.0,
                height: 190.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFffffff),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}