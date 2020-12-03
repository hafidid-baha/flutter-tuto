import 'package:flutter/material.dart';

class Loadign extends StatefulWidget {
  @override
  _LoadignState createState() => _LoadignState();
}

class _LoadignState extends State<Loadign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('this is the loading page'),
      ),
    );
  }
}
