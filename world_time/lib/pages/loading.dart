import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      "isDayTime":instance.isDayTime,
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
      backgroundColor: Colors.yellow[200],
      body: SafeArea(
        child: Center(
          child: SpinKitRotatingCircle(
            color: Colors.white,
            size: 50.0,
          )
        ),
      ),
    );
  }
}
