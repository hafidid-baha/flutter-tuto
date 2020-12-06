import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChoseLocation extends StatefulWidget {
  @override
  _ChoseLocationState createState() => _ChoseLocationState();
}

class _ChoseLocationState extends State<ChoseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi'),
    WorldTime(url: 'America/Chicago', location: 'Chicago'),
    WorldTime(url: 'America/New_York', location: 'New York'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Change Location"),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: (){},
              title: Text(locations[index].location),
            ),
          );
        },
      )
    );
  }
}
