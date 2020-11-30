import 'package:flutter/material.dart';

void main() {
  runApp(Card());
}
class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text("Hafid Card"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/user.jpg'),
                  radius: 40,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Text(
                "Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Hafid Id-baha",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.yellow[400],
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Current Level",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "10",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.yellow[400],
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(width: 10),
                  Text(
                      "hafid.dev@gmail.com",
                      style:TextStyle(
                        color: Colors.greenAccent,
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

