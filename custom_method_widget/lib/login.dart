
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LogIn Page",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              loginFrom(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget loginFrom() {
  return Container(
    width: 300.0,
    height: 250.0,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter User Name',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
              labelText: 'User Name',
              labelStyle: TextStyle(
                color: Colors.amber,
                fontSize: 18.0,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
              prefixIcon: Icon(Icons.account_circle),
            ),
            keyboardType: TextInputType.text,
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Password',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(
                color: Colors.amber,
                fontSize: 18.0,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              )),
              prefixIcon: Icon(Icons.account_circle),
            ),
            keyboardType: TextInputType.text,
            obscureText: true,
            obscuringCharacter: '#',
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            onPressed: (){},
            child: Text("LogIn"),
          ),
        ],
      ),
    ),
  );
}
