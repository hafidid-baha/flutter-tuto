import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String time;
  String location;
  String url;
  bool isDayTime;

  WorldTime({this.location,this.url});

  Future<void> getTime() async{
    Response response = await get(Uri.decodeFull("https://worldtimeapi.org/api/timezone/$url"));
    try{
      Map data = json.decode(response.body);
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1,3);
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));
      isDayTime = now.hour >6 && now.hour < 20?true:false;
      time = DateFormat.jm().format(now);
    }catch(e){
      time = "failed to fetch data";
      isDayTime= false;
    }

  }

}