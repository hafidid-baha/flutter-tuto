import 'package:flutter/material.dart';

void main() {
  runApp(Card());
}
class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ninja Card"),
          centerTitle: true,
          backgroundColor: Colors.grey[600],
        ),
      ),
    );
  }
}

