import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[100],
      ),
      body: Center(
        child: Text(
          "this text must show something",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'IndieFlower',
              color: Colors.black54
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        child: Text("click"),
        backgroundColor: Colors.red[100],
      ),
    );
  }
}


