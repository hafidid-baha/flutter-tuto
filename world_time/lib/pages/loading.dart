import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loadign extends StatefulWidget {
  @override
  _LoadignState createState() => _LoadignState();
}

class _LoadignState extends State<Loadign> {

  void getTime() async{
    Response response = await get("https://worldtimeapi.org/api/timezone/Africa/Casablanca");
    Map data = jsonDecode(response.body);
    String datetime = data['utc_datetime'];
    String offset = data['utc_offset'].substring(1,3);
    DateTime now = DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));
    print(now);
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
        child: Text('this is the loading page'),
      ),
    );
  }
}
