import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    // data = data.isEmpty?ModalRoute.of(context).settings.arguments:data;
    data = data.isNotEmpty? data :ModalRoute.of(context).settings.arguments;
    String bgImage = data['isDayTime']?"day.jpg":"night.jpg";
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/$bgImage"),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Column(
              children: [
                FlatButton.icon(
                  onPressed: () async{
                    dynamic result = await Navigator.pushNamed(context, "/location");
                    setState(() {
                      data =
                      {
                        "location":result['location'],
                        "time":result['time'],
                        "isDayTime":result['isDayTime'],
                      };
                    });
                  },
                  label: Text('change location'),
                  icon: Icon(Icons.add_location),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ]
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['time'],
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
