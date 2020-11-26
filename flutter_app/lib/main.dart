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
        child: IconButton(
          onPressed: ()=>{
            print("you have clicked the snooz button")
          },
          icon: Icon(
            Icons.access_alarm
          ),  
          color: Colors.yellow[300],
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


