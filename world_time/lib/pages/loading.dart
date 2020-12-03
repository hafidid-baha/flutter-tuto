import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loadign extends StatefulWidget {
  @override
  _LoadignState createState() => _LoadignState();
}

class _LoadignState extends State<Loadign> {

  void getData() async{
    Response todo = await get("https://jsonplaceholder.typicode.com/todos/1");
    Map data = jsonDecode(todo.body);
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getData();
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
