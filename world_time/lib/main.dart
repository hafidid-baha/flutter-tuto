import 'package:flutter/material.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choseLocation.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context)=> Loadign(),
      "/home": (context)=> Home(),
      "/location": (context)=> ChoseLocation(),
    },
  ));
}


