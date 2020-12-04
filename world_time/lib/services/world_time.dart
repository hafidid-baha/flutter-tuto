import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String time;
  String location;
  String url;

  WorldTime({this.location,this.url});

  Future<void> getTime() async{
    try{
      Response response = await get("https://worldtimeapi.org/api/timezone/$url");
      print(response.body);
      Map data = jsonDecode(response.body);
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1,3);
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    }catch(e){
      time = "failed to fetch data";
    }

  }

}