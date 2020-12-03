import 'package:flutter/material.dart';

class ChoseLocation extends StatefulWidget {
  @override
  _ChoseLocationState createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('this is the chose location page '),
      ),
    );
  }
}
