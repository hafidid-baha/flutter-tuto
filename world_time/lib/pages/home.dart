import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, "/location");
              },
              label: Text('change location'),
              icon: Icon(Icons.add_location),
            ),
            Text("this is the home page"),
          ],
        ),
      ),
    );
  }
}
