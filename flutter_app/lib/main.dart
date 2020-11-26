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
        child: Image.network("https://images.unsplash.com/photo-1601758003081-cc85332409de?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        child: Text("click"),
        backgroundColor: Colors.red[100],
      ),
    );
  }
}


