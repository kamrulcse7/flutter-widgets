import 'package:flutter/material.dart';
import 'package:pageview/pages/about.dart';
import 'package:pageview/pages/blog.dart';
import 'package:pageview/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          About(),
          Profile(),
          Blog(),
        ],
      )
    );
  }
}