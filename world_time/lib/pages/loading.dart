import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loadign extends StatefulWidget {
  @override
  _LoadignState createState() => _LoadignState();
}

class _LoadignState extends State<Loadign> {
  void getTime() async{
    WorldTime instance = WorldTime(location: "Casablanca",url: "Africa/Casablanca");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, "/home",arguments: {
      "location":instance.location,
      "time":instance.time,
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
          child: Text("Wait Intel The Data Is Loaded ..."),
        ),
      ),
    );
  }
}
