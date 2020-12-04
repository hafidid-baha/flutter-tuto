import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loadign extends StatefulWidget {
  @override
  _LoadignState createState() => _LoadignState();
}

class _LoadignState extends State<Loadign> {

  String time;

  void getTime() async{
    time = "Loading";
    WorldTime instance = WorldTime(location: "Casablanca",url: "Africa/Casablanca");
    await instance.getTime();
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(time),
        ),
      ),
    );
  }
}
